# all_displacements_zero_of_exhausting_certificates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba479778-fb88-0af5-0556-100ed0191ee5",
  "kind": "theorem",
  "lexical_name": "all_displacements_zero_of_exhausting_certificates",
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
  "slug": "all-displacements-zero-of-exhausting-certificates--8d895354b4b2ea8e58c561a1",
  "source": {
    "blob": "db09836ce6a072dbda91a379961acd0b6eb8f6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 176,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d895354b4b2ea8e58c561a19a1ab24f588f3704dc3448cca9042f64936be454",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba479778-fb88-0af5-0556-100ed0191ee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_displacements_zero_of_exhausting_certificates
    (m : ι → ℕ) (delta gamma : ι → ℝ) (hm : ∀ i, 1 ≤ m i)
    (t H epsilon : ℕ → ℝ) (ht : ∀ j, 0 < t j)
    (hH : ∀ j, 0 < H j) (hepsilon : ∀ j, 0 < epsilon j)
    (hheight : Tendsto H atTop atTop) (hwidth : Tendsto epsilon atTop (𝓝 0))
    (hsum : ∀ j, Summable (fun i => deficitTerm (t j) (m i) (delta i) (gamma i)))
    (hcertificate : ∀ j,
      heatDeficit (t j) m delta gamma < detectionThreshold (t j) (H j) (epsilon j)) :
    ∀ i, delta i = 0 := by
  intro i
  by_contra hdelta
  obtain ⟨j, hj⟩ := region_coverage_of_limits H epsilon hheight hwidth
    (delta i) (gamma i) hdelta
  exact excludes_closed_region (ht j).le (hH j).le (hepsilon j).le
    m delta gamma hm (hsum j) (hcertificate j) i hj

end CountableObservations

end
end FormalResearch.RiemannHypothesis.SourceHeatDeficit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db09836ce6a072dbda91a379961acd0b6eb8f6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
