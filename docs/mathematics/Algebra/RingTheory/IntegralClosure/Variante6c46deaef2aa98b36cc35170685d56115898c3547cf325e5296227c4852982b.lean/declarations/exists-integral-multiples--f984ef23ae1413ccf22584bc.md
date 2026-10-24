# exists_integral_multiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adb3fd6b-c30b-b37f-2f99-5769373048bf",
  "kind": "theorem",
  "lexical_name": "exists_integral_multiples",
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
  "slug": "exists-integral-multiples--f984ef23ae1413ccf22584bc",
  "source": {
    "blob": "2cee1e848c2096ae7d81d1384e6e40ead6d45652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 142,
    "path": "GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f984ef23ae1413ccf22584bc899fb0056beb1f8d6ee5c7f6e915ce4130bcaf97",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adb3fd6b-c30b-b37f-2f99-5769373048bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_integral_multiples (s : Finset L) :
    ∃ (y : _) (_ : y ≠ (0 : A)), ∀ x ∈ s, IsIntegral A (y • x) := by
  haveI := Classical.decEq L
  refine' s.induction _ _
  · use 1, one_ne_zero
    rintro x ⟨⟩
  · rintro x s hx ⟨y, hy, hs⟩
    have := exists_integral_multiple
      ((IsFractionRing.isAlgebraic_iff A K L).mpr (isAlgebraic_of_finite _ _ x))
      ((injective_iff_map_eq_zero (algebraMap A L)).mp ?_)
    rcases this with ⟨x', y', hy', hx'⟩
    refine' ⟨y * y', mul_ne_zero hy hy', fun x'' hx'' => _⟩
    rcases Finset.mem_insert.mp hx'' with (rfl | hx'')
    · rw [mul_smul, Algebra.smul_def, Algebra.smul_def, mul_comm _ x'', hx']
      exact isIntegral_mul isIntegral_algebraMap x'.2
    · rw [mul_comm, mul_smul, Algebra.smul_def]
      exact isIntegral_mul isIntegral_algebraMap (hs _ hx'')
    · rw [IsScalarTower.algebraMap_eq A K L]
      apply (algebraMap K L).injective.comp
      exact IsFractionRing.injective _ _
#align exists_integral_multiples exists_integral_multiples

variable (L)

/-- If `L` is a finite extension of `K = Frac(A)`,
then `L` has a basis over `A` consisting of integral elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cee1e848c2096ae7d81d1384e6e40ead6d45652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
