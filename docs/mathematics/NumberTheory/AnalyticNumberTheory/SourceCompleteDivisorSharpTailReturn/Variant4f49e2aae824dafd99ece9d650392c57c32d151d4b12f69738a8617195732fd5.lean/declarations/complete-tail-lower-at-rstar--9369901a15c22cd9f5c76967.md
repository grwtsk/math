# complete_tail_lower_at_Rstar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d39395f-faf3-eb96-8b9d-981efc04d56e",
  "kind": "theorem",
  "lexical_name": "complete_tail_lower_at_Rstar",
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
  "slug": "complete-tail-lower-at-rstar--9369901a15c22cd9f5c76967",
  "source": {
    "blob": "96cb15323074ccf490a7d0ac462c964bd1af7a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant4f49e2aae824dafd99ece9d650392c57c32d151d4b12f69738a8617195732fd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9369901a15c22cd9f5c769678194b7b25236d3ed95d2cd4787b7f001953b8d65",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant4f49e2aae824dafd99ece9d650392c57c32d151d4b12f69738a8617195732fd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d39395f-faf3-eb96-8b9d-981efc04d56e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_lower_at_Rstar (DX R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    ∀ A : ℝ, calibratedRadius R ≤ A →
      -sharpCompleteBlockTailBudget DX G H ≤ completeXiTail A := by
  intro A hA
  have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
  exact complete_tail_lower_of_complete_block A DX H G (by linarith)
    (hb A ((le_max_right _ _).trans hA)) (hH A hA) (hG A hA)

/-- The exact original all-real source lower bound preserves its prefix through Rstar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant4f49e2aae824dafd99ece9d650392c57c32d151d4b12f69738a8617195732fd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant4f49e2aae824dafd99ece9d650392c57c32d151d4b12f69738a8617195732fd5.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96cb15323074ccf490a7d0ac462c964bd1af7a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
