# terms_interpretation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48bb9022-c319-2779-1863-450f4fb279a4",
  "kind": "theorem",
  "lexical_name": "terms_interpretation",
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
  "slug": "terms-interpretation--721dc760a601eb5b5edb81c9",
  "source": {
    "blob": "5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 128,
    "path": "GRWTSK/Analysis/Complex/RationalTentQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:721dc760a601eb5b5edb81c995097d7737e734c5ae90471ae5ce6c4df03d86d5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48bb9022-c319-2779-1863-450f4fb279a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terms_interpretation (h : ℚ) (N : ℕ) (tr : Trace) :
    (∑ i ∈ Finset.range (N + N), toComplex (RationalFiniteSum.termAt (terms h N tr) i)) =
      (∑ i ∈ Finset.range N, TentMellinQuadrature.halfMass (h : ℝ) N i false •
        toComplex (sampleValue tr i false)) +
      ∑ i ∈ Finset.range N, TentMellinQuadrature.halfMass (h : ℝ) N i true •
        toComplex (sampleValue tr i true) := by
  rw [Finset.sum_range_add]
  congr 1
  · apply Finset.sum_congr rfl
    intro i hi
    rw [termAt_left h N tr i (Finset.mem_range.mp hi)]
    simp only [toComplex_mul, toComplex_real, Complex.real_smul, ← cast_mass,
      Complex.ofReal_ratCast]
  · apply Finset.sum_congr rfl
    intro i hi
    simpa only [Nat.add_comm, toComplex_mul, toComplex_real, Complex.real_smul,
      ← cast_mass, Complex.ofReal_ratCast] using
      congrArg toComplex (termAt_right h N tr i (Finset.mem_range.mp hi))

/-- Every sample is checked at its derived midpoint, with the original z. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentQuadrature.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
