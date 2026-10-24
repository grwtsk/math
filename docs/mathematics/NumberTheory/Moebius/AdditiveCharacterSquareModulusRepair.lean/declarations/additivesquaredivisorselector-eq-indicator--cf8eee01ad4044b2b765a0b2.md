# additiveSquareDivisorSelector_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8bb0fcb-bbce-6535-b94a-c044f20091de",
  "kind": "theorem",
  "lexical_name": "additiveSquareDivisorSelector_eq_indicator",
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
  "slug": "additivesquaredivisorselector-eq-indicator--cf8eee01ad4044b2b765a0b2",
  "source": {
    "blob": "1d43c5324923c0019b728634a661ba6b84dc187e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf8eee01ad4044b2b765a0b20a4a4bc223948a2d0188dcdcda2e21c383e5c8d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8bb0fcb-bbce-6535-b94a-c044f20091de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem additiveSquareDivisorSelector_eq_indicator
    (d m : ℕ) [NeZero d] :
    additiveSquareDivisorSelector d m =
      if squareDivisorCongruence d m then 1 else 0 := by
  let : NeZero (d * d) :=
    ⟨mul_ne_zero (NeZero.ne d) (NeZero.ne d)⟩
  unfold additiveSquareDivisorSelector
  rw [additiveZeroResidueSelector_eq_indicator]
  by_cases hc : squareDivisorCongruence d m
  · have hdvd : d * d ∣ m :=
      (squareDivisorCongruence_iff d m).mp hc
    have hz : (m : ZMod (d * d)) = 0 :=
      (ZMod.natCast_eq_zero_iff m (d * d)).2 hdvd
    simp [hc, hz]
  · have hndvd : ¬ d * d ∣ m := by
      exact mt (squareDivisorCongruence_iff d m).mpr hc
    have hnz : (m : ZMod (d * d)) ≠ 0 := by
      intro hz
      exact hndvd ((ZMod.natCast_eq_zero_iff m (d * d)).1 hz)
    simp [hc, hnz]

/-- Complexification of the exact real congruence fibre from PR #555. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d43c5324923c0019b728634a661ba6b84dc187e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
