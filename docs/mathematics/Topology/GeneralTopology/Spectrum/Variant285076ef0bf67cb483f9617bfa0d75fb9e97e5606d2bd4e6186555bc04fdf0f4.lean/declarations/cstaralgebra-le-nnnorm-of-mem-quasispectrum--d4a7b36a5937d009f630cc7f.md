# CStarAlgebra.le_nnnorm_of_mem_quasispectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:641abfc0-cfb8-c807-c977-00e3c659dc40",
  "kind": "lemma",
  "lexical_name": "CStarAlgebra.le_nnnorm_of_mem_quasispectrum",
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
  "slug": "cstaralgebra-le-nnnorm-of-mem-quasispectrum--d4a7b36a5937d009f630cc7f",
  "source": {
    "blob": "e32d5cce9fa2d2e20250c3c13c4ff548e57ea7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a7b36a5937d009f630cc7f2ed8b2ae8b5d08830be65d1ebe82060b9c2fff64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641abfc0-cfb8-c807-c977-00e3c659dc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CStarAlgebra.le_nnnorm_of_mem_quasispectrum {A : Type*} [NonUnitalCStarAlgebra A]
    {a : A} {x : ℝ≥0} (hx : x ∈ quasispectrum ℝ≥0 a) : x ≤ ‖a‖₊ := by
  rw [Unitization.quasispectrum_eq_spectrum_inr' ℝ≥0 ℂ] at hx
  simpa [Unitization.nnnorm_inr] using spectrum.le_nnnorm_of_mem hx

end Quasispectrum

section ComplexScalars

open Complex

variable {A : Type*} [CStarAlgebra A]

local notation "↑ₐ" => algebraMap ℂ A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e32d5cce9fa2d2e20250c3c13c4ff548e57ea7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
