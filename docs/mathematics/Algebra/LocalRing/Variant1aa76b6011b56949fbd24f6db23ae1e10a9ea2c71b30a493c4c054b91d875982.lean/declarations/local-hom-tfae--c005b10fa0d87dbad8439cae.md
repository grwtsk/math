# local_hom_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edc761e544ff194a9598b8528f634f2dcea429bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be947e03-82bc-cce5-e39c-366b6723c339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1e75f88-2c85-809a-99e4-5f1e4540b052",
  "kind": "theorem",
  "lexical_name": "local_hom_TFAE",
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
  "slug": "local-hom-tfae--c005b10fa0d87dbad8439cae",
  "source": {
    "blob": "edc761e544ff194a9598b8528f634f2dcea429bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 294,
    "path": "GRWTSK/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c005b10fa0d87dbad8439cae436710aac5b090902586a381374be0c2b035f04b",
  "verification": {
    "reference": "docs/verification/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1e75f88-2c85-809a-99e4-5f1e4540b052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_hom_TFAE (f : R →+* S) :
    List.TFAE
      [IsLocalRingHom f, f '' (maximalIdeal R).1 ⊆ maximalIdeal S,
        (maximalIdeal R).map f ≤ maximalIdeal S, maximalIdeal R ≤ (maximalIdeal S).comap f,
        (maximalIdeal S).comap f = maximalIdeal R] := by
  tfae_have 1 → 2
  · rintro _ _ ⟨a, ha, rfl⟩
    exact map_nonunit f a ha
  tfae_have 2 → 4
  · exact Set.image_subset_iff.1
  tfae_have 3 ↔ 4
  · exact Ideal.map_le_iff_le_comap
  tfae_have 4 → 1
  · intro h
    constructor
    exact fun x => not_imp_not.1 (@h x)
  tfae_have 1 → 5
  · intro
    ext
    exact not_iff_not.2 (isUnit_map_iff f _)
  tfae_have 5 → 4
  · exact fun h => le_of_eq h.symm
  tfae_finish
#align local_ring.local_hom_tfae LocalRing.local_hom_TFAE

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc761e544ff194a9598b8528f634f2dcea429bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
