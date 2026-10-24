# rectangle_two_split_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a74b22c35eb978f4152109fdd320f6f895a1e42f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb3a0863c6d66f6f871bd23bf2d995ba5e95c892c3a2d0dffeac02d73d434815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bc008d5-8d78-5467-9f19-b51350b4778d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:046e96cc-ccd6-17d0-02b3-b1e80558501b",
  "kind": "theorem",
  "lexical_name": "rectangle_two_split_left",
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
  "slug": "rectangle-two-split-left--b64896578db541be9f7e1e45",
  "source": {
    "blob": "a74b22c35eb978f4152109fdd320f6f895a1e42f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointBoundaryTransport/Variantbb3a0863c6d66f6f871bd23bf2d995ba5e95c892c3a2d0dffeac02d73d434815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64896578db541be9f7e1e45a92f9d38e316280c58123e70a0af85b44d94daf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointBoundaryTransport/Variantbb3a0863c6d66f6f871bd23bf2d995ba5e95c892c3a2d0dffeac02d73d434815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:046e96cc-ccd6-17d0-02b3-b1e80558501b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_two_split_left (N : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) T F =
      rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) T F -
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) T
        (fun q ↦ F (2 * q)) := by
  have hs := moebius_sum_two_split N
    (fun i ↦ ∑ j ∈ T, (ArithmeticFunction.moebius j : ℝ) * F (i * j))
  simpa only [rectangle, mul_sum, mul_assoc, Nat.mul_assoc] using hs

/-- Both parity splits retain the entire even-even sector and both mixed sectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointBoundaryTransport/Variantbb3a0863c6d66f6f871bd23bf2d995ba5e95c892c3a2d0dffeac02d73d434815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointBoundaryTransport/Variantbb3a0863c6d66f6f871bd23bf2d995ba5e95c892c3a2d0dffeac02d73d434815.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a74b22c35eb978f4152109fdd320f6f895a1e42f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
