# sourceSignedOperator_opposite_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ca5d4ba-f13a-537d-efda-e2ef7bdc7e3a",
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
  "slug": "sourcesignedoperator-opposite-signs--02c2d077716ed47c0300eaad",
  "source": {
    "blob": "de5743b9295f25c129fd7edb7ed178032172f820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuardAudit/Variantf1b472451235aab53fdea6edae2cb79facbe44d08e611a84d0d27734e30aa154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c2d077716ed47c0300eaadcaa64e1b9feed56685f359db5cef3bb3050469f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuardAudit/Variantf1b472451235aab53fdea6edae2cb79facbe44d08e611a84d0d27734e30aa154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ca5d4ba-f13a-537d-efda-e2ef7bdc7e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

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

set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.KQHPoleNativeGuard
#check localized_dilation_value
#print axioms localized_dilation_value
#check sourceSignedOperator_opposite_signs
#print axioms sourceSignedOperator_opposite_signs
end FormalResearch.RiemannHypothesis.KQHPoleNativeGuard
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuardAudit/Variantf1b472451235aab53fdea6edae2cb79facbe44d08e611a84d0d27734e30aa154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuardAudit/Variantf1b472451235aab53fdea6edae2cb79facbe44d08e611a84d0d27734e30aa154.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de5743b9295f25c129fd7edb7ed178032172f820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
