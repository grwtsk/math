# zero_cap_information_iff_distance_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98d09d8d-2b95-97cd-2fea-3ff51f52cf8c",
  "kind": "theorem",
  "lexical_name": "zero_cap_information_iff_distance_cap",
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
  "slug": "zero-cap-information-iff-distance-cap--8365f50ff2ba59707ed3688f",
  "source": {
    "blob": "65765888029e5341d5c39914ae13f0cc8ea9036c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LipschitzSampleEnvelope/Variant288f755915b47735ed879a35336f2e6eaa6c38950ad7fb43250060c36e98ca13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8365f50ff2ba59707ed3688f1995d65e3233db11cb87221a4f810bbb27301bc0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LipschitzSampleEnvelope/Variant288f755915b47735ed879a35336f2e6eaa6c38950ad7fb43250060c36e98ca13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d09d8d-2b95-97cd-2fea-3ff51f52cf8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_cap_information_iff_distance_cap {S : Set ℝ} [Nonempty S]
    {L C x : ℝ} (hL : 0 < L) :
    (∀ f : ℝ → ℝ, Admissible S (fun _ => 0) L f → f x ≤ C) ↔
      sampleDistance S x ≤ C / L := by
  rw [information_cap_iff_envelope_cap (fun _ => le_refl 0) hL.le,
    zero_cap_envelope_eq_distance hL]
  rw [le_div_iff₀ hL, mul_comm]

end
end GRWTSK.RiemannHypothesis.Conversation.LipschitzSampleEnvelope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LipschitzSampleEnvelope/Variant288f755915b47735ed879a35336f2e6eaa6c38950ad7fb43250060c36e98ca13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LipschitzSampleEnvelope/Variant288f755915b47735ed879a35336f2e6eaa6c38950ad7fb43250060c36e98ca13.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65765888029e5341d5c39914ae13f0cc8ea9036c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
