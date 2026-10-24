# instCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66ad0898c470e1aa12136b3476a6a9dbe05f2400b91681ee1b5c8206b6cafbdb",
  "kind": "instance",
  "lexical_name": "instCompleteLattice",
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
  "slug": "instcompletelattice--37de7b539917e2106823ea0e",
  "source": {
    "blob": "7d4846e54d35fcc055057adb711804c94590fe26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 180,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variantda64d76b5118525c290300c2d5b6198e3c127f9dc31fea1e502490bc1c46a6d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37de7b539917e2106823ea0e4b859e11bc9960fb4f184ccd7d349145e6e6be85",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variantda64d76b5118525c290300c2d5b6198e3c127f9dc31fea1e502490bc1c46a6d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66ad0898c470e1aa12136b3476a6a9dbe05f2400b91681ee1b5c8206b6cafbdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instCompleteLattice : CompleteLattice (Filtration ι m) where
  sup := (· ⊔ ·)
  le_sup_left _ _ _ := le_sup_left
  le_sup_right _ _ _ := le_sup_right
  sup_le _ _ _ h_fh h_gh i := sup_le (h_fh i) (h_gh _)
  inf := (· ⊓ ·)
  inf_le_left _ _ _ := inf_le_left
  inf_le_right _ _ _ := inf_le_right
  le_inf _ _ _ h_fg h_fh i := le_inf (h_fg i) (h_fh i)
  isLUB_sSup _ :=
    .of_image (f := seq) .rfl (by simpa only [isLUB_pi, Set.image_image] using! fun _ ↦ isLUB_sSup _)
  isGLB_sInf _ := by
    dsimp +instances [instInfSet]
    split_ifs with hn
    · refine .of_image (f := seq) .rfl ?_
      simpa only [isGLB_pi, Set.image_image] using! fun _ ↦ isGLB_sInf _
    · rw [Set.not_nonempty_iff_eq_empty] at hn
      simpa [hn] using! Filtration.le
  le_top f i := f.le' i
  bot_le _ _ := bot_le

end Filtration

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variantda64d76b5118525c290300c2d5b6198e3c127f9dc31fea1e502490bc1c46a6d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variantda64d76b5118525c290300c2d5b6198e3c127f9dc31fea1e502490bc1c46a6d0.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4846e54d35fcc055057adb711804c94590fe26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
