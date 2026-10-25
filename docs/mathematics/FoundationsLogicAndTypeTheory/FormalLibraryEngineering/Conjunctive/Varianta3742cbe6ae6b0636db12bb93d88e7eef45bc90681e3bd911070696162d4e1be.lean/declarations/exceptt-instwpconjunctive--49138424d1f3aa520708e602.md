# ExceptT.instWPConjunctive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45f8e009d92ffda3fb8b95a6ea496e39f4a9dd6e77a5fcaac25e66628ae340ee",
  "kind": "instance",
  "lexical_name": "ExceptT.instWPConjunctive",
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
  "slug": "exceptt-instwpconjunctive--49138424d1f3aa520708e602",
  "source": {
    "blob": "4b2370449e6bef32fc3657a648bc5ae7cd5d5632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49138424d1f3aa520708e602df105918c14a2b5f8e6d6315c487fa5a97b4694e",
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

Occurrence: `declaration:45f8e009d92ffda3fb8b95a6ea496e39f4a9dd6e77a5fcaac25e66628ae340ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ExceptT.instWPConjunctive {m : Type u → Type v} {ε α : Type u} {Pred : Type w}
    {EPred : Type z} [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred]
    [WPConjunctive (m (Except ε α)) (Except ε α) Pred EPred] :
    WPConjunctive (ExceptT ε m α) α Pred (EPost.Cons (ε → Pred) EPred) where
  wp_meet_wp_le x Q₁ Q₂ E := by
    simp only [ExceptT.wp_apply_eq]
    refine PartialOrder.rel_trans
      (WPConjunctive.wp_meet_wp_le x.run (E.pushExcept Q₁) (E.pushExcept Q₂) E.tail)
      (WP.wp_consequence _ _ _ _ ?_)
    intro e
    cases e <;>
      simp only [meet_apply, EPost.Cons.pushExcept] <;>
      first | exact PartialOrder.rel_refl | exact meet_le_left _ _

end Std.Internal.Do
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2370449e6bef32fc3657a648bc5ae7cd5d5632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
