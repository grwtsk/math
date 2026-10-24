# sourceSignedOperator_opposite_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea506b9a-9e23-2d1f-cbdb-9d167fb34391",
  "kind": "theorem",
  "lexical_name": "sourceSignedOperator_opposite_signs",
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
  "slug": "sourcesignedoperator-opposite-signs--992fa6559dd5ed5f892f5295",
  "source": {
    "blob": "783cfb10ad444be1cd81fe868fb730f594e9f6df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuard/Variant5245bcccf2edf74ee7c67e7468b553b1fc4bf180ab23d95c7646466351e63edb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:992fa6559dd5ed5f892f52951a7aade8c01b5052ad9b86bd8745372179fb39c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuard/Variant5245bcccf2edf74ee7c67e7468b553b1fc4bf180ab23d95c7646466351e63edb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea506b9a-9e23-2d1f-cbdb-9d167fb34391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSignedOperator_opposite_signs (A : ℝ) (q : SourceAtom A)
    (hq : sourceAtomWeight A q ≠ 0) :
    (∃ x : SourceAtom A ⊕ SourceAtom A → ℝ,
      x ⬝ᵥ sourceSignedOperator A *ᵥ x < 0) ∧
    (∃ x : SourceAtom A ⊕ SourceAtom A → ℝ,
      0 < x ⬝ᵥ sourceSignedOperator A *ᵥ x) := by
  have hs : 0 < (sourceAtomWeight A q) ^ 2 := sq_pos_of_ne_zero hq
  constructor
  · refine ⟨jointVector (fun i => if i = q then 1 else 0)
      (fun i => if i = q then -sourceAtomWeight A q else 0), ?_⟩
    rw [sourceSignedOperator, localized_dilation_value]
    nlinarith
  · refine ⟨jointVector (fun i => if i = q then 1 else 0)
      (fun i => if i = q then sourceAtomWeight A q else 0), ?_⟩
    rw [sourceSignedOperator, localized_dilation_value]
    nlinarith

end FormalResearch.RiemannHypothesis.KQHPoleNativeGuard
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuard/Variant5245bcccf2edf74ee7c67e7468b553b1fc4bf180ab23d95c7646466351e63edb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuard/Variant5245bcccf2edf74ee7c67e7468b553b1fc4bf180ab23d95c7646466351e63edb.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `783cfb10ad444be1cd81fe868fb730f594e9f6df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
