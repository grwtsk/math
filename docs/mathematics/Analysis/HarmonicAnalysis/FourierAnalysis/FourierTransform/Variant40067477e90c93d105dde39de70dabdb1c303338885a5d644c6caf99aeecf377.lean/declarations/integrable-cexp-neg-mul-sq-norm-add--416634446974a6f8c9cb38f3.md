# integrable_cexp_neg_mul_sq_norm_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "179491edbeb37eae5e80866272098233ff2a9f7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c1bb9ea-5cc9-322f-642b-1f21998deb30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd92656d-e9ad-7f11-2bca-f391ffc228f9",
  "kind": "theorem",
  "lexical_name": "integrable_cexp_neg_mul_sq_norm_add",
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
  "slug": "integrable-cexp-neg-mul-sq-norm-add--416634446974a6f8c9cb38f3",
  "source": {
    "blob": "179491edbeb37eae5e80866272098233ff2a9f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 267,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:416634446974a6f8c9cb38f35b411585e4de35f5986cded512428768a0a39c44",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd92656d-e9ad-7f11-2bca-f391ffc228f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_cexp_neg_mul_sq_norm_add (hb : 0 < b.re) (c : ℂ) (w : V) :
    Integrable (fun (v : V) ↦ cexp (-b * ‖v‖ ^ 2 + c * ⟪w, v⟫)) := by
  let e := (stdOrthonormalBasis ℝ V).repr.symm
  rw [← e.measurePreserving.integrable_comp_emb e.toHomeomorph.measurableEmbedding]
  convert! integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace hb c (e.symm w) with v
  simp only [neg_mul, Function.comp_apply, LinearIsometryEquiv.norm_map,
    LinearIsometryEquiv.symm_symm,
    LinearIsometryEquiv.inner_map_eq_flip]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179491edbeb37eae5e80866272098233ff2a9f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
