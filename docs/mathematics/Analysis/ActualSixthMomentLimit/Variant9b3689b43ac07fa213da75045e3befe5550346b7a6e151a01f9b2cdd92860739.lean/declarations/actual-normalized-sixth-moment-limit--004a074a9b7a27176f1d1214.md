# actual_normalized_sixth_moment_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:953a519f-1045-efee-940e-b2f1ba98c2b9",
  "kind": "theorem",
  "lexical_name": "actual_normalized_sixth_moment_limit",
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
  "slug": "actual-normalized-sixth-moment-limit--004a074a9b7a27176f1d1214",
  "source": {
    "blob": "bf549a47a77bf5d31a9308da68139406a511e872",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:004a074a9b7a27176f1d12147858a5adbfd73556755b6ab64345fdc8b1956f83",
  "verification": {
    "reference": "docs/verification/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:953a519f-1045-efee-940e-b2f1ba98c2b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalized_sixth_moment_limit :
    Tendsto normalizedSixthMoment atTop (𝓝 (1959910318080 : ℝ)) := by
  have ht := ((tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (73383542784 : ℝ)) atTop
      (𝓝 (73383542784 : ℝ))).div actual_source_normalization_limit
        (by norm_num : (4096 / 109395 : ℝ) ≠ 0)).mul
          (actual_sixth_endpoint_correction_limit.pow 2)
  have hlimit : Tendsto (fun A : ℝ ↦
      (73383542784 / sourceNormalization A) * (sixthEndpointCorrection A) ^ 2)
      atTop (𝓝 (1959910318080 : ℝ)) := by
    convert ht using 1 <;> norm_num
  apply hlimit.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (actual_sixth_normalized_squared_formula hA).symm

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthMomentLimit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf549a47a77bf5d31a9308da68139406a511e872` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
