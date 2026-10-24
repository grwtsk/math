# thetaTailSignRegular_two_of_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f38819ed11707cfab7a921b1db712ff7a26ea95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5562ff6-f3b9-b617-3812-89d117aedcbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b558be6-d252-c6a3-a64f-13b5524c990b",
  "kind": "theorem",
  "lexical_name": "thetaTailSignRegular_two_of_succ",
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
  "slug": "thetatailsignregular-two-of-succ--da33042cbe71041e9ebe89e1",
  "source": {
    "blob": "6f38819ed11707cfab7a921b1db712ff7a26ea95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da33042cbe71041e9ebe89e1a7b9bfbd5fce32fb2c7a7778b4bfc7f84e7245d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b558be6-d252-c6a3-a64f-13b5524c990b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailSignRegular_two_of_succ
    (q : Fin 2 ↪o ℕ) (t : Fin 2 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
      Matrix.det (fun i j => thetaTail (2 * q i) (t j)) := by
  apply (thetaTailSignRegular_two_iff_ratio q t ht).mpr
  have hq : 2 * q 0 < 2 * q 1 := by
    have hq01 := q.strictMono (by decide : (0 : Fin 2) < 1)
    omega
  exact thetaTail_div_antitone_of_succ hsucc hq (ht 0) (ht 1)
    (t.monotone (by decide : (0 : Fin 2) ≤ 1))

end ConditionalAssembly
end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f38819ed11707cfab7a921b1db712ff7a26ea95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
