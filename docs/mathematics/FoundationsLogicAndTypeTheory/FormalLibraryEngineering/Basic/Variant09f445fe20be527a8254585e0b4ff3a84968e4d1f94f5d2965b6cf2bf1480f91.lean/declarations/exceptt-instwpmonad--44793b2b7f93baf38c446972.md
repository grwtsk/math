# ExceptT.instWPMonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6d26b716c5eb053ab9b52412ce85d7659576d8ff5d7415d917bd1c9d972e903",
  "kind": "instance",
  "lexical_name": "ExceptT.instWPMonad",
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
  "slug": "exceptt-instwpmonad--44793b2b7f93baf38c446972",
  "source": {
    "blob": "d26428deffc3eaf0ce2ce9ddcc383dd1b0a51f51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44793b2b7f93baf38c446972e8be86b44f35e334bf5d0c7c301088b03d4640a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6d26b716c5eb053ab9b52412ce85d7659576d8ff5d7415d917bd1c9d972e903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ExceptT.instWPMonad {Pred : Type v}
  [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred] :
    WPMonad (ExceptT ε m) Pred (EPost.Cons (ε → Pred) EPred) where
  toWP _ := ExceptT.wpInst
  pure_le_wp_pure x := fun post epost =>
    WPMonad.pure_le_wp_pure (m := m) (Except.ok x) (epost.pushExcept post) epost.tail
  bind_le_wp_bind x f := fun post epost => by
    show wp x.run _ epost.tail ⊑ wp (x >>= f).run (epost.pushExcept post) epost.tail
    apply PartialOrder.rel_trans _ (WPMonad.bind_le_wp_bind (m := m) x.run _ (epost.pushExcept post) epost.tail)
    apply WP.wp_consequence
    intro r; cases r with
    | ok a => exact PartialOrder.rel_refl
    | error el =>
      exact WPMonad.pure_le_wp_pure (m := m) (Except.error el) (epost.pushExcept post) epost.tail

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26428deffc3eaf0ce2ce9ddcc383dd1b0a51f51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
