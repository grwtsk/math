# global_majorant_of_eventual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1446dafab483f9ad9fbaa3c3d9d50f56a10cfa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24445bda-a06c-fccd-2230-9a6bfdcc3b25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2616aa39-268c-2ff4-11e9-6feaaa5cc6db",
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
  "slug": "global-majorant-of-eventual--18a141b3dc7188043be2056b",
  "source": {
    "blob": "c1446dafab483f9ad9fbaa3c3d9d50f56a10cfa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variant8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18a141b3dc7188043be2056b1e6265ecc00ccb3d925225361c845ecd617a22e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdmissionDirect/Variant8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2616aa39-268c-2ff4-11e9-6feaaa5cc6db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdmissionDirect/Variant8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variant8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1446dafab483f9ad9fbaa3c3d9d50f56a10cfa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
