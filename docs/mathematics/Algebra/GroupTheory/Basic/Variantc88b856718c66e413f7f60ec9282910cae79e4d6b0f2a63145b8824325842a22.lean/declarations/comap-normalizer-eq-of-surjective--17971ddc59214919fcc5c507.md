# comap_normalizer_eq_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eca4519136d53ff82d1a680fc87e8b975624157",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 651,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d0b096d-c8d4-affd-2b6f-502308663962",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d490bf94-d66d-f976-e0bf-61bd4a7fb217",
  "kind": "theorem",
  "lexical_name": "comap_normalizer_eq_of_surjective",
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
  "slug": "comap-normalizer-eq-of-surjective--17971ddc59214919fcc5c507",
  "source": {
    "blob": "5eca4519136d53ff82d1a680fc87e8b975624157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 651,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17971ddc59214919fcc5c507ecbbeff3a2cf4e2f9731c1ecc8c1474b8bc26fa0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d490bf94-d66d-f976-e0bf-61bd4a7fb217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_normalizer_eq_of_surjective (H : Subgroup G) {f : N →* G}
    (hf : Function.Surjective f) : H.normalizer.comap f = (H.comap f).normalizer :=
  comap_normalizer_eq_of_le_range fun x _ ↦ hf x

@[deprecated (since := "2025-03-13")]
alias comap_normalizer_eq_of_injective_of_le_range := comap_normalizer_eq_of_le_range

@[deprecated (since := "2025-03-13")]
alias _root_.AddSubgroup.comap_normalizer_eq_of_injective_of_le_range :=
  AddSubgroup.comap_normalizer_eq_of_le_range

/-- The image of the normalizer is equal to the normalizer of the image of an isomorphism. -/
@[to_additive
      "The image of the normalizer is equal to the normalizer of the image of an
      isomorphism."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eca4519136d53ff82d1a680fc87e8b975624157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
