# injective_iff_subsingleton_ext_quotient_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0954a2405474b81313604e243eaef2d33ae5af62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d36a3f35-905f-d20d-3a30-b3840306c1d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:073d6e4f-4fe6-10fa-db50-9140a31457f4",
  "kind": "lemma",
  "lexical_name": "injective_iff_subsingleton_ext_quotient_one",
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
  "slug": "injective-iff-subsingleton-ext-quotient-one--3407f0c2a4428328caf2725a",
  "source": {
    "blob": "0954a2405474b81313604e243eaef2d33ae5af62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3407f0c2a4428328caf2725a823ab1bb3866222b8c40528f14e67d98636f0759",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:073d6e4f-4fe6-10fa-db50-9140a31457f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_iff_subsingleton_ext_quotient_one [Small.{v} R] (M : ModuleCat.{v} R) :
    Injective M ↔
      ∀ (I : Ideal R), Subsingleton (Ext ↧(Shrink.{v} (R ⧸ I)) M 1) :=
  ⟨fun _ _ ↦ Ext.subsingleton_of_injective _ M 0, injective_of_subsingleton_ext_quotient_one M⟩

attribute [local instance] Ext.subsingleton_of_injective in
open Limits in
/-- If `Ext (R ⧸ I) M (n + 1)` vanishes for every ideal `I`, then `M` has injective
dimension at most `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0954a2405474b81313604e243eaef2d33ae5af62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
