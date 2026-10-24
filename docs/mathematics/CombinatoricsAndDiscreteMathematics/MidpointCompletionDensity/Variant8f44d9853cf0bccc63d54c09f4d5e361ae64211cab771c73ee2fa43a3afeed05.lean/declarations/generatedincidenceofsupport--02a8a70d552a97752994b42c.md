# generatedIncidenceOfSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fa6acd4-84a0-37f7-9942-29166fdf7986",
  "kind": "theorem",
  "lexical_name": "generatedIncidenceOfSupport",
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
  "slug": "generatedincidenceofsupport--02a8a70d552a97752994b42c",
  "source": {
    "blob": "b282f6790eef6d2005521f393b9aa75186c18ee7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02a8a70d552a97752994b42ce662749186e7c22548c26580856c1067363646c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fa6acd4-84a0-37f7-9942-29166fdf7986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem generatedIncidenceOfSupport
    {width : Nat}
    (support : Finset (Fin width)) :
    ∃ stage,
      MidpointGenerated
        (CoordinateSeed width)
        stage
        (incidenceOfSupport support) := by
  refine Finset.strongInductionOn support ?_
  intro support generatedSmaller
  by_cases small : support.card ≤ 1
  · refine ⟨0, MidpointGenerated.seedPoint _ ?_⟩
    change (BitVec.cpop (incidenceOfSupport support).bits).toNat ≤ 1
    rw [cpop_eq_finiteSupport_card, finiteSupport_incidenceOfSupport]
    exact small
  · have large : 2 ≤ support.card := by
      omega
    have halfFits :
        (support.card + 1) / 2 ≤ support.card := by
      omega
    obtain ⟨left, leftSubset, leftCard⟩ :=
      Finset.exists_subset_card_eq halfFits
    let right := support \ left
    have rightSubset : right ⊆ support := by
      exact Finset.sdiff_subset
    have rightCard :
        right.card = support.card - left.card := by
      exact Finset.card_sdiff_of_subset leftSubset
    have leftCardLt : left.card < support.card := by
      rw [leftCard]
      omega
    have rightCardLt : right.card < support.card := by
      rw [rightCard, leftCard]
      omega
    have leftStrict : left ⊂ support :=
      _root_.ssubset_iff_subset_ne.2
        ⟨leftSubset, fun equal ↦ by
          have equalCard := congrArg Finset.card equal
          omega⟩
    have rightStrict : right ⊂ support :=
      _root_.ssubset_iff_subset_ne.2
        ⟨rightSubset, fun equal ↦ by
          have equalCard := congrArg Finset.card equal
          omega⟩
    obtain ⟨leftStage, leftGenerated⟩ :=
      generatedSmaller left leftStrict
    obtain ⟨rightStage, rightGenerated⟩ :=
      generatedSmaller right rightStrict
    have leftAtCommon :
        MidpointGenerated
          (CoordinateSeed width)
          (leftStage + rightStage)
          (incidenceOfSupport left) :=
      retainGeneratedBy leftGenerated rightStage
    have rightAtCommon :
        MidpointGenerated
          (CoordinateSeed width)
          (leftStage + rightStage)
          (incidenceOfSupport right) := by
      simpa [Nat.add_comm] using
        retainGeneratedBy rightGenerated leftStage
    have disjoint : Disjoint left right := by
      exact Finset.disjoint_sdiff
    have leftToTarget :
        finiteHamming
            (incidenceOfSupport left)
            (incidenceOfSupport support) =
          right.card := by
      simpa [right] using
        finiteHamming_incidenceOfSupport_of_subset leftSubset
    have targetToRight :
        finiteHamming
            (incidenceOfSupport support)
            (incidenceOfSupport right) =
          left.card := by
      rw [finiteHamming_comm]
      calc
        finiteHamming
            (incidenceOfSupport right)
            (incidenceOfSupport support) =
            (support \ right).card :=
          finiteHamming_incidenceOfSupport_of_subset rightSubset
        _ = left.card := by
          change (support \ (support \ left)).card = left.card
          rw [Finset.sdiff_sdiff_eq_self leftSubset]
    have leftToRight :
        finiteHamming
            (incidenceOfSupport left)
            (incidenceOfSupport right) =
          left.card + right.card :=
      finiteHamming_incidenceOfSupport_of_disjoint disjoint
    have geodesic :
        OnBooleanGeodesic
          (incidenceOfSupport left)
          (incidenceOfSupport right)
          (incidenceOfSupport support) := by
      unfold OnBooleanGeodesic
      rw [leftToTarget, targetToRight, leftToRight]
      omega
    have balanced :
        BalancedLegs
          (finiteHamming
            (incidenceOfSupport left)
            (incidenceOfSupport support))
          (finiteHamming
            (incidenceOfSupport support)
            (incidenceOfSupport right)) := by
      rw [leftToTarget, targetToRight]
      unfold BalancedLegs
      rw [rightCard, leftCard]
      omega
    refine
      ⟨leftStage + rightStage + 1,
        MidpointGenerated.midpoint
          leftAtCommon
          rightAtCommon
          {
            point := incidenceOfSupport support
            onGeodesic := geodesic
            balanced := balanced
          }⟩

/-- Coordinate seeds generate every finite Boolean code by exact midpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b282f6790eef6d2005521f393b9aa75186c18ee7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
