# IsSelfAdjoint.mem_spectrum_eq_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe4ddfc0-9d4d-7110-9ea9-1f0c7eca95cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1e3cf25-7869-2d95-70b3-ddf6104659f9",
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
  "slug": "isselfadjoint-mem-spectrum-eq-re--e2f9c5ae063010fcb6168cca",
  "source": {
    "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2f9c5ae063010fcb6168cca784a179d7dc4929fc49d3e2d0cae25c33c0ca202",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1e3cf25-7869-2d95-70b3-ddf6104659f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSelfAdjoint.mem_spectrum_eq_re {a : A} (ha : IsSelfAdjoint a) {z : ℂ}
    (hz : z ∈ spectrum ℂ a) : z = z.re := by
  let +nondep : NormedAlgebra ℚ A := .restrictScalars ℚ ℂ A
  have hu := exp_mem_unitary_of_mem_skewAdjoint (ha.smul_mem_skewAdjoint conj_I)
  let Iu := Units.mk0 I I_ne_zero
  have : NormedSpace.exp (I • z) ∈ spectrum ℂ (NormedSpace.exp (I • a)) := by
    simpa only [Units.smul_def, Units.val_mk0] using!
      spectrum.exp_mem_exp (Iu • a) (smul_mem_smul_iff.mpr hz)
  exact Complex.ext (ofReal_re _) <| by
    simpa only [← Complex.exp_eq_exp_ℂ, mem_sphere_zero_iff_norm, norm_exp, Real.exp_eq_one_iff,
      smul_eq_mul, I_mul, neg_eq_zero] using!
      spectrum.subset_circle_of_unitary hu this

/-- Any element of the spectrum of a selfadjoint is real. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e5584d07e30cedfd6de43e39471f90b20d98e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
