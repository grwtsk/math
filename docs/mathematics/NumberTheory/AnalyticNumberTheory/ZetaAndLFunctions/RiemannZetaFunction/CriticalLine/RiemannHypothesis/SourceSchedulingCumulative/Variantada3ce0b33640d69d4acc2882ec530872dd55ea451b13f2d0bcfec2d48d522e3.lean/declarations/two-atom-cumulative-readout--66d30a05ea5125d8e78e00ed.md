# two_atom_cumulative_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f1ca89e-4663-4b5f-ddfa-d1e887d704d2",
  "kind": "theorem",
  "lexical_name": "two_atom_cumulative_readout",
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
  "slug": "two-atom-cumulative-readout--66d30a05ea5125d8e78e00ed",
  "source": {
    "blob": "3695ec2e074ea7c88682ea9617d29438950cd44d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variantada3ce0b33640d69d4acc2882ec530872dd55ea451b13f2d0bcfec2d48d522e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66d30a05ea5125d8e78e00edcaa3731de9eab9e5cb67ab08416234be5e15cdb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variantada3ce0b33640d69d4acc2882ec530872dd55ea451b13f2d0bcfec2d48d522e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f1ca89e-4663-4b5f-ddfa-d1e887d704d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_atom_cumulative_readout (g : ℝ → ℝ) (L : ℝ)
    (hg : |g 0 - g 2| ≤ L * 2) :
    |2 * g 0 - 2 * g 2| ≤ L * 4 := by
  have htotal : (∑ i : Fin 2, (![2, -2] : Fin 2 → ℝ) i) = 0 := by
    rw [Fin.sum_univ_two]
    norm_num
  have hbound := fin_cumulative_abs_le (n := 1) (fun i => 2 * (i : ℝ))
    (![2, -2] : Fin 2 → ℝ) g L htotal
    (by
      intro k hk
      have hk0 : k = 0 := by omega
      subst k
      norm_num)
    (by
      intro k hk
      have hk0 : k = 0 := by omega
      subst k
      simpa using hg)
  rw [two_atom_cumulative_cost] at hbound
  simpa [Fin.sum_univ_two, sub_eq_add_neg] using hbound

end FormalResearch.RiemannHypothesis.SourceSchedulingCumulative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variantada3ce0b33640d69d4acc2882ec530872dd55ea451b13f2d0bcfec2d48d522e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variantada3ce0b33640d69d4acc2882ec530872dd55ea451b13f2d0bcfec2d48d522e3.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3695ec2e074ea7c88682ea9617d29438950cd44d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
