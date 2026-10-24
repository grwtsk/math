# thetaPhiJetDet_perturbation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4195dda53661375d12f802ad3c8161458eeaaf9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4a397b4-c784-d7a8-088b-4e3eceadd7eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c778f509-d24f-e0b0-9b4c-8506ae842045",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet_perturbation_bound",
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
  "slug": "thetaphijetdet-perturbation-bound--111b7844d6ff3a14c397af6c",
  "source": {
    "blob": "a4195dda53661375d12f802ad3c8161458eeaaf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384Perturbation01/Variant94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:111b7844d6ff3a14c397af6c14b3b3039f86531c51676a0687346ed0b1d100b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384Perturbation01/Variant94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c778f509-d24f-e0b0-9b4c-8506ae842045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet_perturbation_bound (a e B E : Fin 5 → ℝ)
    (ha : ∀ k, |a k| ≤ B k) (he : ∀ k, |e k| ≤ E k) :
    |thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a| ≤
      thetaPhiJetDetMajorant (fun k => B k + E k) - thetaPhiJetDetMajorant B := by
  let delta (i j k : Fin 5) :=
    (a i+e i)*(a j+e j)*(a k+e k)-a i*a j*a k
  have hd (i j k : Fin 5) : |delta i j k| ≤
      (B i+E i)*(B j+E j)*(B k+E k)-B i*B j*B k :=
    triple_perturbation_bound (ha i) (ha j) (ha k) (he i) (he j) (he k)
  have hi : thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a =
      delta 0 2 4 + 2*delta 1 2 3 - delta 0 3 3 - delta 4 1 1 - delta 2 2 2 := by
    dsimp [thetaPhiJetDet, delta]
    ring
  rw [hi]
  have ht : |delta 0 2 4 + 2*delta 1 2 3 - delta 0 3 3 - delta 4 1 1 - delta 2 2 2| ≤
      |delta 0 2 4|+2*|delta 1 2 3|+|delta 0 3 3|+|delta 4 1 1|+|delta 2 2 2| := by
    have ha2 : |(2:ℝ)*delta 1 2 3| = 2*|delta 1 2 3| := by rw [abs_mul]; norm_num
    linarith only [abs_add (delta 0 2 4) (2*delta 1 2 3),
      abs_sub (delta 0 2 4+2*delta 1 2 3) (delta 0 3 3),
      abs_sub (delta 0 2 4+2*delta 1 2 3-delta 0 3 3) (delta 4 1 1),
      abs_sub (delta 0 2 4+2*delta 1 2 3-delta 0 3 3-delta 4 1 1) (delta 2 2 2), ha2]
  have hall := add_le_add (add_le_add (add_le_add (add_le_add (hd 0 2 4)
    (mul_le_mul_of_nonneg_left (hd 1 2 3) (by norm_num))) (hd 0 3 3)) (hd 4 1 1)) (hd 2 2 2)
  apply ht.trans
  convert hall using 1 <;> dsimp [thetaPhiJetDetMajorant] <;> ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384Perturbation01/Variant94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384Perturbation01/Variant94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4195dda53661375d12f802ad3c8161458eeaaf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
