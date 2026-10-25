# CNFRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b646d381262dc7982079188c6dd521199fe5a4bd0b7fe78f1fbb2a739c5f88e6",
  "kind": "def",
  "lexical_name": "CNFRec",
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
  "slug": "cnfrec--e4c6cce09ee5af8180831bdc",
  "source": {
    "blob": "0ce02e0b9ead4504882a213bc32a023afb0ba288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4c6cce09ee5af8180831bdc0f7b18e1cd78d9ff476f8f3b9cb896493070e873",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b646d381262dc7982079188c6dd521199fe5a4bd0b7fe78f1fbb2a739c5f88e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CNFRec (b : Ordinal) {C : Ordinal → Sort*} (H0 : C 0)
    (H : ∀ o, o ≠ 0 → C (o % b ^ log b o) → C o) : ∀ o, C o := fun o ↦ by
    by_cases h : o = 0
    · rw [h]; exact H0
    · exact H o h (CNFRec _ H0 H (o % b ^ log b o))
    termination_by CNFRec b H0 H o => o
    decreasing_by exact mod_opow_log_lt_self b h
set_option linter.uppercaseLean3 false in
#align ordinal.CNF_rec Ordinal.CNFRec

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ce02e0b9ead4504882a213bc32a023afb0ba288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
