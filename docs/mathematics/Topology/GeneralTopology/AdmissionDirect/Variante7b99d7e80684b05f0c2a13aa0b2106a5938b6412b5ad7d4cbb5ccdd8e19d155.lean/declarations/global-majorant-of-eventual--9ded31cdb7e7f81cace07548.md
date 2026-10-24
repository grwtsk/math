# global_majorant_of_eventual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a2a2298-7bbf-0620-7776-3bd17f5b4652",
  "kind": "theorem",
  "lexical_name": "global_majorant_of_eventual",
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
  "slug": "global-majorant-of-eventual--9ded31cdb7e7f81cace07548",
  "source": {
    "blob": "bcdd52c6b2a8af22138299665982680a98161cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ded31cdb7e7f81cace07548ab53f292365440559c8cd19bba1129517478f61d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a2a2298-7bbf-0620-7776-3bd17f5b4652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_majorant_of_eventual (h : EventualMajorantObligation) :
    LogarithmicMajorantObligation := by
  obtain ⟨R, C₀, C₁, _, hC₀, hC₁, htail⟩ := h
  obtain ⟨M, hM⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (s := Icc (-R) R) actual_multiplier_continuous.continuousOn
  refine ⟨|M| + C₀, C₁, by positivity, hC₁, ?_⟩
  intro ξ
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  by_cases hx : |ξ| ≤ R
  · have hb := hM ξ (abs_le.mp hx)
    rw [Real.norm_eq_abs] at hb
    have := le_abs_self M
    nlinarith [mul_nonneg hC₁ hlog]
  · have ht := htail ξ (le_of_lt (lt_of_not_ge hx))
    linarith [abs_nonneg M]

/-- Any proved global logarithmic bound controls the exact normalized Fourier
integrand by the already proved integrable energies, not by an integral value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcdd52c6b2a8af22138299665982680a98161cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
