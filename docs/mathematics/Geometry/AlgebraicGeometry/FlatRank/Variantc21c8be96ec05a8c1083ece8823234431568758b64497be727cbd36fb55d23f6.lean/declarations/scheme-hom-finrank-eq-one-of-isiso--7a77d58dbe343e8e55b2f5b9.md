# Scheme.Hom.finrank_eq_one_of_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7cce39dcb92ad68c034d0b3acef4f8d65e8c668",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:093c1af1-fcb2-5686-36fc-8ccf1297ec08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5685bad-fcd0-dada-c2fe-732cfc69ee52",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.finrank_eq_one_of_isIso",
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
  "slug": "scheme-hom-finrank-eq-one-of-isiso--7a77d58dbe343e8e55b2f5b9",
  "source": {
    "blob": "a7cce39dcb92ad68c034d0b3acef4f8d65e8c668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 258,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a77d58dbe343e8e55b2f5b924295d869f16a070c3e5065a435f49a37c086073",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5685bad-fcd0-dada-c2fe-732cfc69ee52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.finrank_eq_one_of_isIso (f : X ⟶ Y) [IsIso f] : finrank f = 1 := by
  ext y
  obtain ⟨R, g, _, y, rfl⟩ := Y.exists_Spec_apply_eq y
  have : Nontrivial R := y.nontrivial
  rw [← finrank_pullback_snd, ← Category.comp_id (pullback.snd f g), finrank_comp_left_of_isIso,
    ← Spec.map_id, finrank_SpecMap_eq_finrank, CommRingCat.hom_id, Pi.one_apply,
    ← Algebra.algebraMap_self, RingHom.finrank_algebraMap]
  · simp
  · exact RingHom.Finite.id R
  · exact RingHom.Flat.id ↑R

set_option backward.defeqAttrib.useBackward true in
/-- A finite flat locally finitely presented morphism is an isomorphism if and only if
its rank is constant equal to `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7cce39dcb92ad68c034d0b3acef4f8d65e8c668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
