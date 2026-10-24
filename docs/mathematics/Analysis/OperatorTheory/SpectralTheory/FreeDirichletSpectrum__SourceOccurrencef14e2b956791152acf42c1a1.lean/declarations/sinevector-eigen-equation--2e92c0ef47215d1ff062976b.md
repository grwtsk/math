# sineVector_eigen_equation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ccde8e1-5019-4d00-7fba-61e0605fe089",
  "kind": "theorem",
  "lexical_name": "sineVector_eigen_equation",
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
  "slug": "sinevector-eigen-equation--2e92c0ef47215d1ff062976b",
  "source": {
    "blob": "bc3e996eb210b7f07723e8bbf74109850c19d158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 98,
    "path": "GRWTSK/Spectral/FreeDirichletSpectrum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e92c0ef47215d1ff062976b6a8794a55491ed42b593165bd31e7d283ea24dcb",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ccde8e1-5019-4d00-7fba-61e0605fe089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sineVector_eigen_equation (N : ℕ) (k : Fin N) :
    freeDirichlet N *ᵥ sineVector N k = eigenvalue N k • sineVector N k := by
  have hN : (N:ℝ)+1 ≠ 0 := by positivity
  have hr : Real.sin (angle N k * ((N+1:ℕ):ℝ)) = 0 := by
    have he : angle N k * ((N+1:ℕ):ℝ) = (k.val+1:ℕ) * Real.pi := by
      unfold angle
      push_cast
      field_simp
    rw [he, Real.sin_nat_mul_pi]
  ext i
  have he := freeDirichlet_mulVec_of_boundary N (fun n => Real.sin (angle N k * n))
    (by simp) hr i
  simp only [Nat.cast_add, Nat.cast_one, Nat.cast_ofNat] at he
  change (freeDirichlet N *ᵥ (fun j => Real.sin (angle N k * (j.val+1)))) i = _
  rw [he]
  have hplus : angle N k * ((i.val:ℝ)+2) = angle N k * (i.val+1) + angle N k := by
    ring
  have hminus : angle N k * (i.val:ℝ) = angle N k * (i.val+1) - angle N k := by ring
  rw [hplus, hminus, Real.sin_add, Real.sin_sub]
  simp only [Pi.smul_apply, smul_eq_mul, eigenvalue, sineVector]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/FreeDirichletSpectrum.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc3e996eb210b7f07723e8bbf74109850c19d158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
