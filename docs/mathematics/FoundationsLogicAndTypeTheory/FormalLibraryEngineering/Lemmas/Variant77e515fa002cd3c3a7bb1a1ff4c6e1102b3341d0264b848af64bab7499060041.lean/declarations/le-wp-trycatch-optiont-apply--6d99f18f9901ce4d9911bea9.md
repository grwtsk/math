# le_wp_tryCatch_OptionT_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65c21f2ddd7f0c8ace31d86be618314e7f348245",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77e515fa002cd3c3a7bb1a1ff4c6e1102b3341d0264b848af64bab7499060041.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd0b4844-9c5e-dea1-482c-8b23deeec162",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbf81880-1a44-85a0-bafb-ad3aaf568d4f",
  "kind": "theorem",
  "lexical_name": "le_wp_tryCatch_OptionT_apply",
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
  "slug": "le-wp-trycatch-optiont-apply--6d99f18f9901ce4d9911bea9",
  "source": {
    "blob": "65c21f2ddd7f0c8ace31d86be618314e7f348245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant77e515fa002cd3c3a7bb1a1ff4c6e1102b3341d0264b848af64bab7499060041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d99f18f9901ce4d9911bea923e5811087862888b927f3a05dafd7087bec165e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant77e515fa002cd3c3a7bb1a1ff4c6e1102b3341d0264b848af64bab7499060041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbf81880-1a44-85a0-bafb-ad3aaf568d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_wp_tryCatch_OptionT_apply (x : OptionT m α)
    (h : PUnit → OptionT m α) :
  wp x post ⟨wp (h ⟨⟩) post epost, epost.tail⟩ ⊑
    wp (MonadExceptOf.tryCatch x h : OptionT m α) post epost := by
  simp only [wp, MonadExceptOf.tryCatch, OptionT.tryCatch, OptionT.mk]
  apply PartialOrder.rel_trans; rotate_left; apply WPMonad.bind_le_wp_bind
  apply WP.wp_consequence (x := x.run); intro o; cases o with
  | some a =>
    apply PartialOrder.rel_trans; rotate_left; apply WPMonad.pure_le_wp_pure
    simp [EPost.Cons.pushOption]; exact PartialOrder.rel_refl
  | none => exact PartialOrder.rel_refl

/-! ## Additional state operation lemmas -/

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant77e515fa002cd3c3a7bb1a1ff4c6e1102b3341d0264b848af64bab7499060041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant77e515fa002cd3c3a7bb1a1ff4c6e1102b3341d0264b848af64bab7499060041.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c21f2ddd7f0c8ace31d86be618314e7f348245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
