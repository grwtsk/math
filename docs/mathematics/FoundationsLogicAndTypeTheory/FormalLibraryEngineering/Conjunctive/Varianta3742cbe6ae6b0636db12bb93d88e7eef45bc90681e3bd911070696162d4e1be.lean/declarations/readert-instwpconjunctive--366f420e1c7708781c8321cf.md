# ReaderT.instWPConjunctive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b05d51e967d18776a22c1916b51865d98d327b86748482bf9d91845142395330",
  "kind": "instance",
  "lexical_name": "ReaderT.instWPConjunctive",
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
  "slug": "readert-instwpconjunctive--366f420e1c7708781c8321cf",
  "source": {
    "blob": "4b2370449e6bef32fc3657a648bc5ae7cd5d5632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:366f420e1c7708781c8321cfbf844ed48e5d22bb19a03e5cd26da97dd78afe6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b05d51e967d18776a22c1916b51865d98d327b86748482bf9d91845142395330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ReaderT.instWPConjunctive {m : Type u → Type v} {ρ : Type u} {Pred : Type w} {EPred : Type z}
    {α : Type u} [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred]
    [WPConjunctive (m α) α Pred EPred] :
    WPConjunctive (ReaderT ρ m α) α (ρ → Pred) EPred where
  wp_meet_wp_le x Q₁ Q₂ E := by
    intro r
    simp only [meet_apply, ReaderT.wp_apply_eq]
    refine PartialOrder.rel_trans
      (WPConjunctive.wp_meet_wp_le (x.run r) (fun a => Q₁ a r) (fun a => Q₂ a r) E)
      (WP.wp_consequence _ _ _ _ ?_)
    intro a
    simp only [meet_apply]
    exact PartialOrder.rel_refl

/-- `OptionT` lifts conjunctivity from its base monad. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2370449e6bef32fc3657a648bc5ae7cd5d5632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
