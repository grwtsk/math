# thetaPhiJetDet_gaussian_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60536416ef3f7b8cc1a09de4c997a04db559cab2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25ea5d43-4d21-ea42-dda3-9b22c4fbb1fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a4a016a-b97f-9875-fbdb-2f7ae223b7ea",
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
  "slug": "thetaphijetdet-gaussian-error-bound--83b2c1a4bb9836e4f76b0343",
  "source": {
    "blob": "60536416ef3f7b8cc1a09de4c997a04db559cab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83b2c1a4bb9836e4f76b03437a6dfd8480d526f581b6ffe9911b57deae85baeb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a4a016a-b97f-9875-fbdb-2f7ae223b7ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–84.

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

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60536416ef3f7b8cc1a09de4c997a04db559cab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
