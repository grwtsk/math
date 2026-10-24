# thetaPhiJetDet_gaussian_error_bound

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
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d03c5d1b-bcdf-0554-6d02-5902c4bc54ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:586b4e5a-e899-7138-55ae-c623b83c3cda",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet_gaussian_error_bound",
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
  "slug": "thetaphijetdet-gaussian-error-bound--b3ce068b7b305fec146beacd",
  "source": {
    "blob": "8f440504bbbca7d741c112f44dcbc3d80ce44ff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3ce068b7b305fec146beacd46f16cb05b197dc03f09b9e4d1769fc2f92b89a1",
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

Occurrence: `result:586b4e5a-e899-7138-55ae-c623b83c3cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet_gaussian_error_bound (a e : Fin 5 → ℝ) (A z : ℝ)
    (ha : ∀ k, |a k| ≤ 4 * 4 ^ k.val * A ^ (k.val + 1))
    (he : ∀ k, |e k| ≤ 4 * 4 ^ k.val * 3 ^ (2 * k.val + 4) *
      A ^ (k.val + 1) * z) :
    |thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a| ≤
      A ^ 9 * (351671943168 * z + 2307319619125248 * z ^ 2 +
        444223250467651584 * z ^ 3) := by
  have h := thetaPhiJetDet_perturbation_bound a e
    (fun k => 4 * 4 ^ k.val * A ^ (k.val + 1))
    (fun k => 4 * 4 ^ k.val * 3 ^ (2 * k.val + 4) * A ^ (k.val + 1) * z) ha he
  convert h using 1
  dsimp [thetaPhiJetDetMajorant]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f440504bbbca7d741c112f44dcbc3d80ce44ff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
