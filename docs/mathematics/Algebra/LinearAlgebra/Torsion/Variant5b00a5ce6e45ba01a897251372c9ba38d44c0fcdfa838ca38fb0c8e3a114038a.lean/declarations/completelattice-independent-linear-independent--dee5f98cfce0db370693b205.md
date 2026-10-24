# CompleteLattice.Independent.linear_independent'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:061d0981-d652-f8e7-30c1-2f6326eae8a3",
  "kind": "theorem",
  "lexical_name": "CompleteLattice.Independent.linear_independent'",
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
  "slug": "completelattice-independent-linear-independent--dee5f98cfce0db370693b205",
  "source": {
    "blob": "c6c2b3964fef8160f053423876017d6a04bff75f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dee5f98cfce0db370693b205238e3dc3aa2b5c486ceebe7afde25359e4663908",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:061d0981-d652-f8e7-30c1-2f6326eae8a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompleteLattice.Independent.linear_independent' {ι R M : Type*} {v : ι → M} [Ring R]
    [AddCommGroup M] [Module R M] (hv : CompleteLattice.Independent fun i => R ∙ v i)
    (h_ne_zero : ∀ i, Ideal.torsionOf R M (v i) = ⊥) : LinearIndependent R v := by
  refine' linearIndependent_iff_not_smul_mem_span.mpr fun i r hi => _
  replace hv := CompleteLattice.independent_def.mp hv i
  simp only [iSup_subtype', ← Submodule.span_range_eq_iSup, disjoint_iff] at hv
  have : r • v i ∈ ⊥ := by
    rw [← hv, Submodule.mem_inf]
    refine' ⟨Submodule.mem_span_singleton.mpr ⟨r, rfl⟩, _⟩
    convert hi
    ext
    simp
  rw [← Submodule.mem_bot R, ← h_ne_zero i]
  simpa using this
#align ideal.complete_lattice.independent.linear_independent' Ideal.CompleteLattice.Independent.linear_independent'

end TorsionOf

section

variable (R M : Type*) [Ring R] [AddCommGroup M] [Module R M]

/-- The span of `x` in `M` is isomorphic to `R` quotiented by the torsion ideal of `x`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c2b3964fef8160f053423876017d6a04bff75f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
