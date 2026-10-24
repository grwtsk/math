# exists_pairedColumnReach_corrects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f889b8bd-65e7-d5c9-64d2-b13d48062f91",
  "kind": "theorem",
  "lexical_name": "exists_pairedColumnReach_corrects",
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
  "slug": "exists-pairedcolumnreach-corrects--afdaa4d497eee8667711af46",
  "source": {
    "blob": "99c86b12b39260befa9f58065c249b55ec4a5188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 399,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afdaa4d497eee8667711af46d5d2510b355d53f348effe437f65499b31b69685",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f889b8bd-65e7-d5c9-64d2-b13d48062f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pairedColumnReach_corrects
    (x y : I → G → ℤ)
    (hxsign : ∀ r h, IsSign (x r h))
    (hysign : ∀ r h, IsSign (y r h))
    (hxodd : IsOddMatrix conj x)
    (hyodd : IsOddMatrix conj y)
    (g : G) (hg : g ≠ conj g)
    (hsum : ∑ r, x r g = ∑ r, y r g) :
    ∃ z,
      PairedColumnReach conj g y x z ∧
      (∀ r, z r g = y r g) ∧
      (∀ r, z r (conj g) = y r (conj g)) ∧
      IsOddMatrix conj z ∧
      (∀ r h, IsSign (z r h)) ∧
      (∀ h, ∑ r, z r h = ∑ r, x r h) := by
  let measure : (I → G → ℤ) → ℕ :=
    fun u => columnMismatchCount (fun r => u r g) (fun r => y r g)
  induction hm : measure x using Nat.strong_induction_on generalizing x with
  | h n ih =>
      by_cases hcol : (fun r => x r g) = fun r => y r g
      · refine ⟨x, PairedColumnReach.refl x, ?_, ?_, hxodd, hxsign, ?_⟩
        · intro r
          exact DFunLike.congr_fun hcol r
        · intro r
          rw [hxodd r g, hyodd r g]
          congr 1
          exact DFunLike.congr_fun hcol r
        · intro h
          rfl
      ·
        obtain ⟨⟨i, j⟩⟩ :=
          exists_opposite_mismatch_pair
            (fun r => x r g) (fun r => y r g)
            (fun r => hxsign r g) (fun r => hysign r g)
            hsum hcol
        let x' := switchConjugatePair conj x g i.1 j.1
        have hlt : measure x' < measure x := by
          exact columnMismatchCount_switchConjugatePair_lt conj x y g i j
        have hx'odd : IsOddMatrix conj x' :=
          switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1
        have hx'sign : ∀ r h, IsSign (x' r h) :=
          switchConjugatePair_isSign conj x hxsign g i.1 j.1
        have hx'sumg : ∑ r, x' r g = ∑ r, y r g := by
          rw [sum_switchConjugatePair conj x g i.1 j.1 g, hsum]
        have hlt' : measure x' < n := by
          simpa [hm] using hlt
        obtain ⟨z, hreach, hzg, hzgc, hzodd, hzsign, hzsum⟩ :=
          ih (measure x') hlt' x' rfl hx'sign hx'odd
            hyodd hx'sumg
        refine ⟨z, PairedColumnReach.step i j hreach,
          hzg, hzgc, hzodd, hzsign, ?_⟩
        intro h
        rw [hzsum h, sum_switchConjugatePair conj x g i.1 j.1 h]

/-- A paired opposite mismatch at the selected column is corrected by the
conjugate-paired switch. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c86b12b39260befa9f58065c249b55ec4a5188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
