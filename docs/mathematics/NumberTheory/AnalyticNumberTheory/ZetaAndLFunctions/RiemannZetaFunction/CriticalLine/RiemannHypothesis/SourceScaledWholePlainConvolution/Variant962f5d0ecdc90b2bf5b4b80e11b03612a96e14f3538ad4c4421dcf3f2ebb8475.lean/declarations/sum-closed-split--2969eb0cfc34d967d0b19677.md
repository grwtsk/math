# sum_closed_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "699a956546d32cdbaeef61604f3f037aa23282f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9236424e-e57f-8726-8c94-aba196a31fcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87eafa70-c040-228e-9d96-8ace9ddaaf34",
  "kind": "theorem",
  "lexical_name": "sum_closed_split",
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
  "slug": "sum-closed-split--2969eb0cfc34d967d0b19677",
  "source": {
    "blob": "699a956546d32cdbaeef61604f3f037aa23282f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2969eb0cfc34d967d0b19677949e9181771f23fce9c949d0d6cf270e88a962a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87eafa70-c040-228e-9d96-8ace9ddaaf34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_closed_split (N U : ℕ) (hU : U ≤ N) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      (∑ n ∈ Finset.Icc 1 U, f n) + ∑ n ∈ Finset.Ioc U N, f n := by
  classical
  have hs : Finset.Icc 1 N = Finset.Icc 1 U ∪ Finset.Ioc U N := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 U) (Finset.Ioc U N) := by
    apply Finset.disjoint_left.mpr
    intro n hn hm
    have := (Finset.mem_Icc.mp hn).2
    have := (Finset.mem_Ioc.mp hm).1
    omega
  rw [hs, Finset.sum_union hd]

/-- Cutting the first axis retains its closed short row exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `699a956546d32cdbaeef61604f3f037aa23282f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
