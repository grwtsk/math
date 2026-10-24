# isTopologicallyNilpotent_of_constantCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79344090-a486-630e-0268-77012f6ddd05",
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
  "slug": "istopologicallynilpotent-of-constantcoeff--f69a531a2e1c8cd778772565",
  "source": {
    "blob": "5313a8e6457068eea2a9572a5043485721efa90d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f69a531a2e1c8cd77877256565a3078a82befbad8ff3fb1ded4488d1570b588d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79344090-a486-630e-0268-77012f6ddd05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicallyNilpotent_of_constantCoeff
    {R : Type*} [CommRing R] [TopologicalSpace R] [IsLinearTopology R R]
    {f} (hf : IsTopologicallyNilpotent (constantCoeff σ R f)) :
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5313a8e6457068eea2a9572a5043485721efa90d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
