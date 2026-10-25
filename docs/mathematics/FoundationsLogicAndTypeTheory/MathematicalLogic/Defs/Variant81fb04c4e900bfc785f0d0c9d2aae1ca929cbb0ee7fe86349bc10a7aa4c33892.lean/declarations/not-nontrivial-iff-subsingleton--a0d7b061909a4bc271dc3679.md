# not_nontrivial_iff_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecc8c38d-6a1b-e4f5-9d80-d7f5b38bfc35",
  "kind": "theorem",
  "lexical_name": "not_nontrivial_iff_subsingleton",
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
  "slug": "not-nontrivial-iff-subsingleton--a0d7b061909a4bc271dc3679",
  "source": {
    "blob": "eaea8bb689339eacfd040613ced00747473dad1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d7b061909a4bc271dc3679247fdd9ee2bca2b4b6a91660e4b21f0a4a78a5ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc8c38d-6a1b-e4f5-9d80-d7f5b38bfc35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_nontrivial_iff_subsingleton : ¬Nontrivial α ↔ Subsingleton α := by
  simp only [nontrivial_iff, subsingleton_iff, not_exists, Classical.not_not]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaea8bb689339eacfd040613ced00747473dad1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
