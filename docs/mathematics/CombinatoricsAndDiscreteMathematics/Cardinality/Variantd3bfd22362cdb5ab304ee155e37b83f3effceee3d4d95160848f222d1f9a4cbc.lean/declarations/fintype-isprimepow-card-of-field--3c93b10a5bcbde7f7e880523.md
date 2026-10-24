# Fintype.isPrimePow_card_of_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ed0f20c48789be21c4ec3994aa18fec7f318c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23f9c64a-b5a2-669c-3e21-f1fd48245edc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:601c474c-52e9-ffa0-b3a2-cbf624fd3327",
  "kind": "theorem",
  "lexical_name": "Fintype.isPrimePow_card_of_field",
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
  "slug": "fintype-isprimepow-card-of-field--3c93b10a5bcbde7f7e880523",
  "source": {
    "blob": "0ed0f20c48789be21c4ec3994aa18fec7f318c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c93b10a5bcbde7f7e880523577fb99679ce31f33772f3a10158d2dbe4f9e68f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:601c474c-52e9-ffa0-b3a2-cbf624fd3327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fintype.isPrimePow_card_of_field {α} [Fintype α] [Field α] : IsPrimePow ‖α‖ := by
  -- TODO: `Algebra` version of `CharP.exists`, of type `∀ p, Algebra (ZMod p) α`
  obtain ⟨p, _⟩ := CharP.exists α
  haveI hp := Fact.mk (CharP.char_is_prime α p)
  letI : Algebra (ZMod p) α := ZMod.algebra _ _
  let b := IsNoetherian.finsetBasis (ZMod p) α
  rw [Module.card_fintype b, ZMod.card, isPrimePow_pow_iff]
  · exact hp.1.isPrimePow
  rw [← Module.finrank_eq_card_basis b]
  exact Module.finrank_pos.ne'

/-- A `Fintype` can be given a field structure iff its cardinality is a prime power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed0f20c48789be21c4ec3994aa18fec7f318c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
