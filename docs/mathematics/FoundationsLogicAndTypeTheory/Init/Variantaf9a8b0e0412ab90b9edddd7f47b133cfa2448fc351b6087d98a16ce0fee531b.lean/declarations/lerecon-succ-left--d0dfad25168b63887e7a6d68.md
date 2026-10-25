# leRecOn_succ_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40cde109-8a3a-02ea-622a-559b97c52e1e",
  "kind": "lemma",
  "lexical_name": "leRecOn_succ_left",
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
  "slug": "lerecon-succ-left--d0dfad25168b63887e7a6d68",
  "source": {
    "blob": "49daebd5449d0fab8de18608b6d111d57f63a75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0dfad25168b63887e7a6d686b5ef70b9d948a4efbeb59954d7e6ae7be2f104a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40cde109-8a3a-02ea-622a-559b97c52e1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leRecOn_succ_left {C : ℕ → Sort*} {n m}
    {next : ∀ {k}, C k → C (k + 1)} (x : C n) (h1 : n ≤ m) (h2 : n + 1 ≤ m) :
    (leRecOn h2 next (next x) : C m) = (leRecOn h1 next x : C m) :=
  leRec_succ_left (motive := fun n _ => C n) _ (fun _ _ => @next _) _ _

@[deprecated (since := "2026-03-05")] alias strongRec' := Nat.strongRec
@[deprecated (since := "2026-03-05")] alias strongRec'_spec := Nat.strongRec_eq
@[deprecated (since := "2026-03-05")] alias strongRecOn' := Nat.strongRec
@[deprecated (since := "2026-03-05")] alias strongRecOn'_beta := Nat.strongRec_eq

/-- Induction principle starting at a non-zero number.
To use in an induction proof, the syntax is `induction n, hn using Nat.le_induction` (or the same
for `induction'`).

This is an alias of `Nat.leRec`, specialized to `Prop`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49daebd5449d0fab8de18608b6d111d57f63a75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
