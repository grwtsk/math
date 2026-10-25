# stepRet_then

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7af234d-1b03-44ba-8c60-02f2937118a8",
  "kind": "theorem",
  "lexical_name": "stepRet_then",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "stepret-then--afc452d7bee8914e9220c9c3",
  "source": {
    "blob": "a8c8040b3bf85ea393560e6de1a257c3b2450957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 550,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afc452d7bee8914e9220c9c3017ed6ee29e994a64437e47a31bd33fccfcaeb56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7af234d-1b03-44ba-8c60-02f2937118a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepRet_then {k k' : Cont} {v} : stepRet (k.then k') v = (stepRet k v).then k' := by
  induction k generalizing v with simp only [Cont.then, stepRet, *]
  | cons₁ =>
    rw [← stepNormal_then]
    rfl
  | comp =>
    rw [← stepNormal_then]
  | fix _ _ k_ih =>
    split_ifs
    · rw [← k_ih]
    · rw [← stepNormal_then]
      rfl
  | _ => simp only [Cfg.then]

/-- This is a temporary definition, because we will prove in `code_is_ok` that it always holds.
It asserts that `c` is semantically correct; that is, for any `k` and `v`,
`eval (stepNormal c k v) = eval (Cfg.ret k (Code.eval c v))`, as an equality of partial values
(so one diverges iff the other does).

In particular, we can let `k = Cont.halt`, and then this asserts that `stepNormal c Cont.halt v`
evaluates to `Cfg.halt (Code.eval c v)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8c8040b3bf85ea393560e6de1a257c3b2450957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
