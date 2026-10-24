# heatDeficit_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:355593c5-2d9f-7f4d-5d06-0d796ba9c7e4",
  "kind": "theorem",
  "lexical_name": "heatDeficit_bounds",
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
  "slug": "heatdeficit-bounds--52629c6c7f452444e305e121",
  "source": {
    "blob": "db09836ce6a072dbda91a379961acd0b6eb8f6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 145,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52629c6c7f452444e305e121830a5672db5b7bfd48fcff906c6953698cf9ad1b",
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

Occurrence: `result:355593c5-2d9f-7f4d-5d06-0d796ba9c7e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatDeficit_bounds {t : ℝ} (ht : 0 ≤ t)
    (m : ι → ℕ) (delta gamma : ι → ℝ)
    (hdelta : ∀ i, |delta i| ≤ 1 / 2)
    (hmass : Summable (fun i => gaussianTerm t (m i) (gamma i))) :
    0 ≤ heatDeficit t m delta gamma ∧
      heatDeficit t m delta gamma ≤ (t / 4) * gaussianMass t m gamma := by
  have hsum := deficit_summable_of_gaussian ht m delta gamma hdelta hmass
  constructor
  · exact tsum_nonneg (fun i => deficitTerm_nonneg ht (m i) (delta i) (gamma i))
  · unfold heatDeficit gaussianMass
    rw [← tsum_mul_left]
    exact hsum.tsum_le_tsum
      (fun i => deficitTerm_le_quarter_gaussian ht (m i) (gamma i) (hdelta i))
      (hmass.mul_left (t / 4))

/-- Heights tending to infinity and widths tending to zero cover every fixed
nonzero displacement. Monotonicity is unnecessary for this exhaustion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db09836ce6a072dbda91a379961acd0b6eb8f6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
