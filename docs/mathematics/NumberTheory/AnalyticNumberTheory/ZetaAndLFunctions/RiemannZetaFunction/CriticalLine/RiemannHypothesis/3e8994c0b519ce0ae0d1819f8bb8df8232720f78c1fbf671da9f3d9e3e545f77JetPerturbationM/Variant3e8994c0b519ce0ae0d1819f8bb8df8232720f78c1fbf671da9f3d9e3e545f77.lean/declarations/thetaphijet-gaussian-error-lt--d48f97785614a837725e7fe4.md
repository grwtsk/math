# thetaPhiJet_gaussian_error_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f440504bbbca7d741c112f44dcbc3d80ce44ff2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b125cabf-9255-4b4d-f2fd-815328d093fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5f2e7cd-549d-4286-016e-3a4e9ccb25fa",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet_gaussian_error_lt",
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
  "slug": "thetaphijet-gaussian-error-lt--d48f97785614a837725e7fe4",
  "source": {
    "blob": "8f440504bbbca7d741c112f44dcbc3d80ce44ff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d48f97785614a837725e7fe48074c17333562a0796d2da8d178c501f80b26dba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5f2e7cd-549d-4286-016e-3a4e9ccb25fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet_gaussian_error_lt {A : ℝ} (hA : 3 ≤ A) :
    A ^ 9 * (351671943168 * Real.exp (-8*A) +
      2307319619125248 * Real.exp (-8*A)^2 +
      444223250467651584 * Real.exp (-8*A)^3) < 300000 := by
  have hAn : 0 ≤ A := by linarith
  have hz := thetaGaussian_exp_neg_eight_le hA
  have hp := thetaGaussian_ninth_power_bound hA
  calc
    _ = (A^9 * Real.exp (-8*A)) * (351671943168 +
        2307319619125248 * Real.exp (-8*A) +
        444223250467651584 * Real.exp (-8*A)^2) := by ring
    _ ≤ (3^9/20^8 : ℝ) * (351671943168 + 2307319619125248 * (1/20^8) +
        444223250467651584 * (1/20^8)^2) := by gcongr
    _ < _ := by norm_num

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f440504bbbca7d741c112f44dcbc3d80ce44ff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
