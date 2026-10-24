# ae_comp_linearMap_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c93fa14d-6c7f-56b8-d961-9a158a0b4e17",
  "kind": "lemma",
  "lexical_name": "ae_comp_linearMap_mem_iff",
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
  "slug": "ae-comp-linearmap-mem-iff--5ed0ab4a548b2a3a72942db3",
  "source": {
    "blob": "1f978f910dbc5d820f84a54a56d2621b01eded6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ed0ab4a548b2a3a72942db38d37d1e896e8816d059872337b1e8fc5c463fe4d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c93fa14d-6c7f-56b8-d961-9a158a0b4e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_comp_linearMap_mem_iff (h : Function.Surjective L) {s : Set F} (hs : MeasurableSet s) :
    (∀ᵐ x ∂μ, L x ∈ s) ↔ ∀ᵐ y ∂ν, y ∈ s := by
  have : FiniteDimensional 𝕜 E := .of_locallyCompactSpace 𝕜
  have : AEMeasurable L μ := L.continuous_of_finiteDimensional.aemeasurable
  apply (ae_map_iff this hs).symm.trans
  rcases L.exists_map_addHaar_eq_smul_addHaar μ ν h with ⟨c, c_pos, hc⟩
  rw [hc]
  exact ae_ennreal_smul_measure_iff c_pos.ne'

/-- Given a linear map `L : E → F`, a property holds almost everywhere in `F` if and only if,
almost everywhere in `F`, it holds almost everywhere along the subspace spanned by the
image of `L`. This is an instance of a disintegration argument for additive Haar measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f978f910dbc5d820f84a54a56d2621b01eded6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
