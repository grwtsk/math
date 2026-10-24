# omitted_diagonal_is_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b11799e3b6b44418085e6fd1e11360c9d9da59f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b10371f3cc57567ce3915838689f0dc5479334e7c677c80be05673f5e1c93b6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac19813c-96f3-8022-72f3-623f866fa396",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f551a3d2-fc51-2dcc-c837-9154491077b4",
  "kind": "theorem",
  "lexical_name": "omitted_diagonal_is_false",
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
  "slug": "omitted-diagonal-is-false--101ff44ef7c747044958b93c",
  "source": {
    "blob": "2b11799e3b6b44418085e6fd1e11360c9d9da59f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WholePlainConvolutionFixtures/Variantb10371f3cc57567ce3915838689f0dc5479334e7c677c80be05673f5e1c93b6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:101ff44ef7c747044958b93c0229ba2507d0b06498acc7b5983e1711b038aac0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WholePlainConvolutionFixtures/Variantb10371f3cc57567ce3915838689f0dc5479334e7c677c80be05673f5e1c93b6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f551a3d2-fc51-2dcc-c837-9154491077b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omitted_diagonal_is_false :
    offDiagonal (Finset.Ioc 1 4)
      (fun m n ↦ vonMangoldt m * atomWeight 4 (m * n)) (fun _ ↦ 1) ≠
    rectangle (Finset.Ioc 1 4)
      (fun m n ↦ vonMangoldt m * atomWeight 4 (m * n)) (fun _ ↦ 1) := by
  have hi : Finset.Ioc 1 4 = ({2, 3, 4} : Finset ℕ) := by decide
  have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  convert (ne_of_lt hp) using 1 <;>
    norm_num [offDiagonal, rectangle, diagonal, hi, atomWeight,
      vonMangoldt_apply_prime Nat.prime_two]

/-- A synthetic atom at four violates support at N=2 and defeats unmasked completion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WholePlainConvolutionFixtures/Variantb10371f3cc57567ce3915838689f0dc5479334e7c677c80be05673f5e1c93b6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WholePlainConvolutionFixtures/Variantb10371f3cc57567ce3915838689f0dc5479334e7c677c80be05673f5e1c93b6b.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b11799e3b6b44418085e6fd1e11360c9d9da59f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
