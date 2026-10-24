# sum_shellFactorBlockPrefixPairs_eq_sum_enteredSubtypePairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:942b33cc-200d-8b95-bd9d-cec019253e58",
  "kind": "theorem",
  "lexical_name": "sum_shellFactorBlockPrefixPairs_eq_sum_enteredSubtypePairs",
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
  "slug": "sum-shellfactorblockprefixpairs-eq-sum-enteredsubtypepairs--a6af871690b7d9f816971bf3",
  "source": {
    "blob": "d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 246,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6af871690b7d9f816971bf388a629e54652d564d5068e963d21f2636886026b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:942b33cc-200d-8b95-bd9d-cec019253e58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_shellFactorBlockPrefixPairs_eq_sum_enteredSubtypePairs
    {N q x : ℕ} (B : TypeIIShellFactorBlock N q)
    (hx : x ∈ typeIIProductShell N q) :
    (∑ pair ∈ shellFactorBlockPrefixPairs B x,
        conductorThreeTypeIIPairTerm pair) =
      ∑ pair ∈ enteredShellBlockSubtypePairs B x,
        conductorThreeTypeIIPairTerm (pair.1.1, pair.2.1) := by
  classical
  refine Finset.sum_bij
    (fun pair hp ↦
      ((⟨pair.1,
          (mem_shellFactorBlockPrefixPairs_iff.mp hp).2.1⟩ : B.Left),
        (⟨pair.2,
          (mem_shellFactorBlockPrefixPairs_iff.mp hp).2.2.1⟩ : B.Right)))
    ?_ ?_ ?_ ?_
  · intro pair hp
    have hp' := mem_shellFactorBlockPrefixPairs_iff.mp hp
    simp [enteredShellBlockSubtypePairs, hp'.1.2.2.1, hp'.2.2.2]
  · intro pair₁ hp₁ pair₂ hp₂ heq
    apply Prod.ext
    · exact congrArg (fun p : B.Left × B.Right ↦ p.1.1) heq
    · exact congrArg (fun p : B.Left × B.Right ↦ p.2.1) heq
  · intro localPair hlocal
    have hlocal' :
        2 ^ q < localPair.1.1.1 * localPair.2.1.1 ∧
          localPair.1.1.1 * localPair.2.1.1 ≤ x := by
      simpa [enteredShellBlockSubtypePairs] using hlocal
    let pair : VaughanScaleIndex N × VaughanScaleIndex N :=
      (localPair.1.1, localPair.2.1)
    have hx' := mem_typeIIProductShell_iff.mp hx
    have heffective : IsEffectiveTypeIIShellPair N q pair :=
      ⟨localPair.1.2.1, localPair.2.2.1, hlocal'.1,
        hlocal'.2.trans (hx'.2.trans (min_le_left _ _)),
        hlocal'.2.trans (hx'.2.trans (min_le_right _ _))⟩
    have hp : pair ∈ shellFactorBlockPrefixPairs B x :=
      mem_shellFactorBlockPrefixPairs_iff.mpr
        ⟨heffective, localPair.1.2, localPair.2.2, hlocal'.2⟩
    refine ⟨pair, hp, ?_⟩
    apply Prod.ext <;> apply Subtype.ext <;> rfl
  · intro pair hp
    simp [conductorThreeTypeIIPairTerm]

/-- Exact adapter between the entered full-scale pair sum and the local
block bilinear cutoff matrix requested by the shell analysis. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
