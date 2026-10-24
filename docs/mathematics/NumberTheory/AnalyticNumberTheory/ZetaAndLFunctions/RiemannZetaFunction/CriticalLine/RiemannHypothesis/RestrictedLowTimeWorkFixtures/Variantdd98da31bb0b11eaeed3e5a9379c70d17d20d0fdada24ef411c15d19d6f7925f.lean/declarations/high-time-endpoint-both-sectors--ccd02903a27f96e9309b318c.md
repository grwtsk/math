# high_time_endpoint_both_sectors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "658f1778dde4f251ad251b6faa97ddc50f758cfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd98da31bb0b11eaeed3e5a9379c70d17d20d0fdada24ef411c15d19d6f7925f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5cf2656-b5b1-7163-d870-7db0d5897da2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be388c08-e8f1-0388-8455-20f9fd51226a",
  "kind": "theorem",
  "lexical_name": "high_time_endpoint_both_sectors",
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
  "slug": "high-time-endpoint-both-sectors--ccd02903a27f96e9309b318c",
  "source": {
    "blob": "658f1778dde4f251ad251b6faa97ddc50f758cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RestrictedLowTimeWorkFixtures/Variantdd98da31bb0b11eaeed3e5a9379c70d17d20d0fdada24ef411c15d19d6f7925f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccd02903a27f96e9309b318cedb3fb66edfc7fce3a2d29273416be0fa9f13e52",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RestrictedLowTimeWorkFixtures/Variantdd98da31bb0b11eaeed3e5a9379c70d17d20d0fdada24ef411c15d19d6f7925f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be388c08-e8f1-0388-8455-20f9fd51226a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem high_time_endpoint_both_sectors {A v : ℝ} (hA : 1 ≤ A)
    (hv : v ∈ actualWorkLeftStrip A) :
    normalizedTest explicitSecondDerivative A
        (v - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) = 0 ∧
      deriv (normalizedTest explicitSecondDerivative A)
        (v - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) = 0 :=
  actual_left_strip_high_time_source_atoms_zero hA hv le_rfl

/-- Every later high time also vanishes before the new spatial left edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RestrictedLowTimeWorkFixtures/Variantdd98da31bb0b11eaeed3e5a9379c70d17d20d0fdada24ef411c15d19d6f7925f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RestrictedLowTimeWorkFixtures/Variantdd98da31bb0b11eaeed3e5a9379c70d17d20d0fdada24ef411c15d19d6f7925f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `658f1778dde4f251ad251b6faa97ddc50f758cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
