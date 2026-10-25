# negInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a622798c59f84abe3b6d2d244c2dc7593cb7b5c4f48d80344a0c8ce703ad135e",
  "kind": "def",
  "lexical_name": "negInduction",
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
  "slug": "neginduction--ddc411a05a9474171f1f8ec2",
  "source": {
    "blob": "a2b65e2829a5030ca2996142f86850a585101d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddc411a05a9474171f1f8ec28df06e0699a3c8c6c168b25d6b5b59e0e2bb94ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a622798c59f84abe3b6d2d244c2dc7593cb7b5c4f48d80344a0c8ce703ad135e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim] protected def negInduction {motive : ℤ → Sort*} (nat : ∀ n : ℕ, motive n)
    (neg : (∀ n : ℕ, motive n) → ∀ n : ℕ, motive (-n)) : ∀ n : ℤ, motive n
  | .ofNat n => nat n
  | .negSucc n => neg nat <| n + 1

/-- See `Int.inductionOn'` for an induction in both directions. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b65e2829a5030ca2996142f86850a585101d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
