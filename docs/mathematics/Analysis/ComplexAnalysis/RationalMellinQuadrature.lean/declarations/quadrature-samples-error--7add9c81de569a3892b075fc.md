# quadrature_samples_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8ffbaaa-8363-3caa-e8b7-0f38b935f8bd",
  "kind": "theorem",
  "lexical_name": "quadrature_samples_error",
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
  "slug": "quadrature-samples-error--7add9c81de569a3892b075fc",
  "source": {
    "blob": "fe9bb430fef9fd223b23cea2616bbd33cfe3e217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 139,
    "path": "GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7add9c81de569a3892b075fc9bc87ea91271ee32ec53d59140a0246e2de74b62",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ffbaaa-8363-3caa-e8b7-0f38b935f8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadrature_samples_error {z : Coordinates} {a b : ℚ} {N : ℕ} (samples : List Sample)
    (ha : 1 < a) (hab : a ≤ b) (hN : 0 < N) (hz : z.1 ≤ 1)
    (hs : ∀ i ∈ Finset.range N, RationalMellinNode.check z (node a b N i)
      (sampleAt samples i).resolution (sampleAt samples i).trace = true) :
    ‖kernel (a : ℝ) (b : ℝ) (toComplex z) -
      ∑ i ∈ Finset.range N, toComplex (RationalFiniteSum.termAt (terms a b N samples) i)‖ ≤
      (meshError z a b N : ℝ) + (sampleBudget z a b N samples : ℝ) := by
  have hab' : (a : ℝ) ≤ b := by exact_mod_cast hab
  have ha' : (1 : ℝ) < a := by exact_mod_cast ha
  have hz' : (toComplex z).re ≤ 2 := by
    have hz1 : (z.1 : ℝ) ≤ 1 := by exact_mod_cast hz
    change (z.1 : ℝ) ≤ 2
    linarith
  have hv : ∀ i < N,
      ‖density (toComplex z) (uniformNodes (a : ℝ) b N i) - toComplex (sampleValue samples i)‖ ≤
        (sampleError z a b N samples i : ℝ) := by
    intro i hi
    simpa only [sampleValue, sampleError, cast_node] using
      RationalMellinNode.check_sound (hs i (Finset.mem_range.mpr hi))
  have hq := kernel_sample_error (uniformNodes (a : ℝ) b N) N
    (uniformNodes_monotone hab' N) (by simpa using ha') hz'
    (fun i => toComplex (sampleValue samples i))
    (fun i => (sampleError z a b N samples i : ℝ)) hv
  have hm := partitionError_le_arithmeticMeshBound (uniformNodes (a : ℝ) b N) N (toComplex z)
  rw [terms_interpretation, cast_meshError, cast_sampleBudget]
  simpa only [uniformNodes_zero, uniformNodes_end (a : ℝ) (b : ℝ) N hN] using
    hq.trans (add_le_add hm (le_refl _))

/-- Mesh + every density-node error + every weighted arithmetic error. No integral premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe9bb430fef9fd223b23cea2616bbd33cfe3e217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
