# actual_centered_prefix_eq_mean_add_storage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc06a843-8747-ff01-0ff6-64fd2dbc8f53",
  "kind": "theorem",
  "lexical_name": "actual_centered_prefix_eq_mean_add_storage",
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
  "slug": "actual-centered-prefix-eq-mean-add-storage--18b2d91f834f52e60b2b12de",
  "source": {
    "blob": "81f0df3f341590f5419a7e47239383747957d8e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 230,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant417cd66f8c7f8df6ab0ce55ba8196201e70aa78c7f744faa0ac06a3ed09449d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18b2d91f834f52e60b2b12dea48d37d486e3c9001a1921ca14f02579bc6350ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant417cd66f8c7f8df6ab0ce55ba8196201e70aa78c7f744faa0ac06a3ed09449d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc06a843-8747-ff01-0ff6-64fd2dbc8f53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_prefix_eq_mean_add_storage (U k : ℕ)
    (hU : 1 ≤ U) (hUk : U ≤ k) :
    (∑ n ∈ Finset.Ioc U k, centeredBeta U n) = centeredPrefixMean U +
      ∑ d ∈ Finset.Icc 1 U,
        (moebius d : ℝ) * (divisorStorage d (k + 1) - divisorStorage d k) := by
  rw [actual_centered_prefix_eq_divisor_prefix U k hU hUk]
  unfold centeredPrefixMean
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  rw [divisorPrefix_eq_mean_add_storage U d k (by
    have := (Finset.mem_Icc.mp hd).1
    omega)]
  ring

/-- At the original anchor the nonzero mean is canceled by its signed storage difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant417cd66f8c7f8df6ab0ce55ba8196201e70aa78c7f744faa0ac06a3ed09449d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant417cd66f8c7f8df6ab0ce55ba8196201e70aa78c7f744faa0ac06a3ed09449d9.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f0df3f341590f5419a7e47239383747957d8e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
