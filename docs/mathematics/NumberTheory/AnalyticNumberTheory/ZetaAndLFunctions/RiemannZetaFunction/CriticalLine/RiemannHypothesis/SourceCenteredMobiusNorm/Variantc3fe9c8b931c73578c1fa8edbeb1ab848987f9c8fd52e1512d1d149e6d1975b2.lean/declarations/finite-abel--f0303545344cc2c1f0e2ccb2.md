# finite_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90d3d335a7721c599e75d935e5185c7b6f62f30f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3093609e-0322-f8e1-709b-58b83269aafd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:993cb4a4-9908-1623-08c3-c8ef20bf5f58",
  "kind": "theorem",
  "lexical_name": "finite_abel",
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
  "slug": "finite-abel--f0303545344cc2c1f0e2ccb2",
  "source": {
    "blob": "90d3d335a7721c599e75d935e5185c7b6f62f30f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 193,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0303545344cc2c1f0e2ccb2cc92e6c8960cbb7732ce284d9b70e9a7fe90affb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:993cb4a4-9908-1623-08c3-c8ef20bf5f58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_abel (b : ℕ → ℝ) (v : ℕ → Lp ℝ 2 (volume : Measure ℝ))
    (U N : ℕ) (hUN : U ≤ N) :
    (∑ n ∈ Finset.Ioc U N, b n • v n) =
      (∑ n ∈ Finset.Ioc U N, b n) • v N +
        ∑ n ∈ Finset.Ico (U + 1) N,
          (∑ j ∈ Finset.Ioc U n, b j) • (v n - v (n + 1)) := by
  induction N, hUN using Nat.le_induction with
  | base => simp
  | succ N hUN ih =>
    by_cases hNU : N = U
    · subst N
      simp [Nat.Ioc_succ_singleton]
    · have hU1 : U + 1 ≤ N := by omega
      rw [Finset.sum_Ioc_succ_top hUN, ih, Finset.sum_Ioc_succ_top hUN,
        Finset.sum_Ico_succ_top hU1]
      simp only [add_smul, smul_sub]
      abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d3d335a7721c599e75d935e5185c7b6f62f30f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
