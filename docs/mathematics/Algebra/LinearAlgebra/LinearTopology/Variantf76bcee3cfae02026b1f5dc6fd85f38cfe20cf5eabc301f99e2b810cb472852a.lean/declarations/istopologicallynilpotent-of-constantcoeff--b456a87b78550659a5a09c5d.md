# isTopologicallyNilpotent_of_constantCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca7c9f02283c596cf96735ac4338cf5e59d59551",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c81a09f4-5180-cf13-d32e-1fb324f92e63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8120f6f8-c63d-461a-a023-1b47f3403e58",
  "kind": "theorem",
  "lexical_name": "isTopologicallyNilpotent_of_constantCoeff",
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
  "slug": "istopologicallynilpotent-of-constantcoeff--b456a87b78550659a5a09c5d",
  "source": {
    "blob": "ca7c9f02283c596cf96735ac4338cf5e59d59551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b456a87b78550659a5a09c5d69d540a0d0ca99e6cdcfe74a05b5edc186ee49b1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8120f6f8-c63d-461a-a023-1b47f3403e58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicallyNilpotent_of_constantCoeff
    {R : Type*} [CommRing R] [TopologicalSpace R] [IsLinearTopology R R]
    {f : MvPowerSeries σ R} (hf : IsTopologicallyNilpotent (constantCoeff f)) :
    IsTopologicallyNilpotent f := by
  simp_rw [IsTopologicallyNilpotent, tendsto_iff_coeff_tendsto, coeff_zero,
    IsLinearTopology.hasBasis_ideal.tendsto_right_iff]
  intro d I hI
  replace hf := hf.eventually_mem hI
  simp_rw [eventually_atTop, SetLike.mem_coe, ← Ideal.Quotient.eq_zero_iff_mem,
    map_pow, ← coeff_map, ← constantCoeff_map] at hf ⊢
  obtain ⟨N, hN⟩ := hf
  use N + d.degree
  intro n hn
  simpa only [map_pow] using coeff_eq_zero_of_constantCoeff_nilpotent (hN N le_rfl) hn

/-- Assuming the base ring has a linear topology, the powers of a `MvPowerSeries` converge to 0
iff its constant coefficient is topologically nilpotent.

See also `MvPowerSeries.WithPiTopology.isTopologicallyNilpotent_iff_constantCoeff_isNilpotent`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca7c9f02283c596cf96735ac4338cf5e59d59551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
