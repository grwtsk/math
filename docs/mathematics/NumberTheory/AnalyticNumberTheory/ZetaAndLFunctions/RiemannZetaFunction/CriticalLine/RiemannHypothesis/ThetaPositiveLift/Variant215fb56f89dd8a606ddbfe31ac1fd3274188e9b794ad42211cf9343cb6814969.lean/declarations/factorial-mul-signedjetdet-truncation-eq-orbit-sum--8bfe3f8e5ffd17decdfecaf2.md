# factorial_mul_signedJetDet_truncation_eq_orbit_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77d018cb2601e79dc0358f1f745b3422d1c14b7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:017b432b-0a98-e820-9455-d50cc98ef4a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e1d25e3-3e6a-0988-5367-3228999dd613",
  "kind": "theorem",
  "lexical_name": "factorial_mul_signedJetDet_truncation_eq_orbit_sum",
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
  "slug": "factorial-mul-signedjetdet-truncation-eq-orbit-sum--8bfe3f8e5ffd17decdfecaf2",
  "source": {
    "blob": "77d018cb2601e79dc0358f1f745b3422d1c14b7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bfe3f8e5ffd17decdfecaf27a23216c89e539714aef4500481434ee57240e37",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e1d25e3-3e6a-0988-5367-3228999dd613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_mul_signedJetDet_truncation_eq_orbit_sum
    (k N : ℕ) (t : ℝ) :
    (k.factorial : ℝ) *
        signedJetDet k
          (fun n => thetaPhiDerivativeTapeTruncation N n t) =
      ∑ f : Fin k → Fin N,
        thetaPhiFiniteModeChoiceWeight t f *
          thetaPhiFiniteModeOrbitSignedSum t f := by
  rw [signedJetDet_truncation_eq_finite_mode_sum]
  calc
    (k.factorial : ℝ) *
          (∑ f : Fin k → Fin N,
            thetaPhiFiniteModeChoiceWeight t f *
              thetaPhiFiniteModeChoiceSignedDet t f) =
        ∑ σ : Equiv.Perm (Fin k),
          ∑ f : Fin k → Fin N,
            thetaPhiFiniteModeChoiceWeight t f *
              thetaPhiFiniteModeChoiceSignedDet t f := by
      simp [Fintype.card_perm]
    _ =
        ∑ σ : Equiv.Perm (Fin k),
          ∑ f : Fin k → Fin N,
            thetaPhiFiniteModeChoiceWeight t f *
              thetaPhiFiniteModeChoiceSignedDet t
                (fun j => f (σ j)) := by
      apply Fintype.sum_congr
      intro σ
      exact (finite_mode_weighted_sum_perm_invariant t σ).symm
    _ =
        ∑ f : Fin k → Fin N,
          ∑ σ : Equiv.Perm (Fin k),
            thetaPhiFiniteModeChoiceWeight t f *
              thetaPhiFiniteModeChoiceSignedDet t
                (fun j => f (σ j)) := by
      rw [Finset.sum_comm]
    _ =
        ∑ f : Fin k → Fin N,
          thetaPhiFiniteModeChoiceWeight t f *
            thetaPhiFiniteModeOrbitSignedSum t f := by
      apply Fintype.sum_congr
      intro f
      unfold thetaPhiFiniteModeOrbitSignedSum
      rw [Finset.mul_sum]

/-- The two possible column orderings of two selected natural modes, written
without any positivity assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d018cb2601e79dc0358f1f745b3422d1c14b7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
