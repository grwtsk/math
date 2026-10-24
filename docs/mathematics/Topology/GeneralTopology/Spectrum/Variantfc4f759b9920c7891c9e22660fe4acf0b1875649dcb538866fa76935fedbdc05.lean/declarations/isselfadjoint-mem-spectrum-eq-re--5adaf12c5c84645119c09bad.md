# IsSelfAdjoint.mem_spectrum_eq_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13e4b7d477e552f6af68f86e672a5b1eefa5b29d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dcf7017-9ada-0907-fb89-38d89c7a86c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7515b42-e402-8a43-988f-cdd8d9afec77",
  "kind": "theorem",
  "lexical_name": "IsSelfAdjoint.mem_spectrum_eq_re",
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
  "slug": "isselfadjoint-mem-spectrum-eq-re--5adaf12c5c84645119c09bad",
  "source": {
    "blob": "13e4b7d477e552f6af68f86e672a5b1eefa5b29d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5adaf12c5c84645119c09bad25d259a1b6984d6de9451499a5b9512e1af84124",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7515b42-e402-8a43-988f-cdd8d9afec77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSelfAdjoint.mem_spectrum_eq_re [StarModule ℂ A] {a : A} (ha : IsSelfAdjoint a) {z : ℂ}
    (hz : z ∈ spectrum ℂ a) : z = z.re := by
  have hu := exp_mem_unitary_of_mem_skewAdjoint ℂ (ha.smul_mem_skewAdjoint conj_I)
  let Iu := Units.mk0 I I_ne_zero
  have : _root_.exp ℂ (I • z) ∈ spectrum ℂ (_root_.exp ℂ (I • a)) := by
    simpa only [Units.smul_def, Units.val_mk0] using
      spectrum.exp_mem_exp (Iu • a) (smul_mem_smul_iff.mpr hz)
  exact Complex.ext (ofReal_re _) <| by
    simpa only [← Complex.exp_eq_exp_ℂ, mem_sphere_zero_iff_norm, norm_eq_abs, abs_exp,
      Real.exp_eq_one_iff, smul_eq_mul, I_mul, neg_eq_zero] using
      spectrum.subset_circle_of_unitary hu this
#align is_self_adjoint.mem_spectrum_eq_re IsSelfAdjoint.mem_spectrum_eq_re

/-- Any element of the spectrum of a selfadjoint is real. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13e4b7d477e552f6af68f86e672a5b1eefa5b29d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
