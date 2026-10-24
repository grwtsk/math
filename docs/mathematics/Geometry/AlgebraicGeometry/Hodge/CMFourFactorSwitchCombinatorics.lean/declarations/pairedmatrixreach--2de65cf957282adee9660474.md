# PairedMatrixReach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2fe6f1cd8ac91747736f83435296cf86c44a7d1e9ae0a991cb40930885bbe64",
  "kind": "inductive",
  "lexical_name": "PairedMatrixReach",
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
  "slug": "pairedmatrixreach--2de65cf957282adee9660474",
  "source": {
    "blob": "99c86b12b39260befa9f58065c249b55ec4a5188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 672,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2de65cf957282adee9660474848696092cff27951a90cb3a72db6fa2a0dede91",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2fe6f1cd8ac91747736f83435296cf86c44a7d1e9ae0a991cb40930885bbe64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 672–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PairedMatrixReach
    (conj : G → G) (y : I → G → ℤ) :
    (I → G → ℤ) → (I → G → ℤ) → Prop
  | refl (x) : PairedMatrixReach conj y x x
  | step {x z}
      (g : G)
      (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
      (j : NegPosMismatch (fun r => x r g) (fun r => y r g))
      (hrest :
        PairedMatrixReach conj y
          (switchConjugatePair conj x g i.1 j.1) z) :
      PairedMatrixReach conj y x z

/-- Full finite switch connectivity.

Two finite odd +/-1 sign matrices with identical column sums are connected by
a finite sequence of the manuscript's elementary conjugate-paired two-row
switches. The proof is strong induction on the total number of mismatching
matrix entries. -/
theorem pairedMatrixReach_of_equal_column_sums
    (x y : I → G → ℤ)
    (hxsign : ∀ r g, IsSign (x r g))
    (hysign : ∀ r g, IsSign (y r g))
    (hxodd : IsOddMatrix conj x)
    (hyodd : IsOddMatrix conj y)
    (hsum : ∀ g, ∑ r, x r g = ∑ r, y r g) :
    PairedMatrixReach conj y x y := by
  let measure : (I → G → ℤ) → ℕ := fun u => matrixMismatchCount u y
  induction hm : measure x using Nat.strong_induction_on generalizing x with
  | h n ih =>
      by_cases hxy : x = y
      · subst y
        exact PairedMatrixReach.refl x
      ·
        obtain ⟨r, hr⟩ := Function.ne_iff.mp hxy
        obtain ⟨g, hrg⟩ := Function.ne_iff.mp hr
        have hcol :
            (fun q => x q g) ≠ (fun q => y q g) := by
          intro heq
          exact hrg (DFunLike.congr_fun heq r)
        obtain ⟨⟨i, j⟩⟩ :=
          exists_opposite_mismatch_pair
            (fun q => x q g) (fun q => y q g)
            (fun q => hxsign q g) (fun q => hysign q g)
            (hsum g) hcol
        have hg : g ≠ conj g :=
          conj_ne_self_of_row conj x hxsign hxodd r g
        let x' := switchConjugatePair conj x g i.1 j.1
        have hx'odd : IsOddMatrix conj x' :=
          switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1
        have hx'sign : ∀ q k, IsSign (x' q k) :=
          switchConjugatePair_isSign conj x hxsign g i.1 j.1
        have hx'sum : ∀ k, ∑ q, x' q k = ∑ q, y q k := by
          intro k
          rw [sum_switchConjugatePair conj x g i.1 j.1 k, hsum k]
        have hlt : measure x' < measure x := by
          exact matrixMismatchCount_switchConjugatePair_lt
            conj hconj x y hxodd hyodd g hg i j
        have hlt' : measure x' < n := by
          simpa [hm] using hlt
        have hrest :
            PairedMatrixReach conj y x' y :=
          ih (measure x') hlt' x' rfl hx'sign hx'odd hx'sum
        exact PairedMatrixReach.step g i j hrest

end GlobalSwitchConnectivity

end ConjugatePairedSwitch

end

end GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchCombinatorics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean#L672).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c86b12b39260befa9f58065c249b55ec4a5188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
