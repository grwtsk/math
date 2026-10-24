# LawfulTraversable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e15cb66b3fdb97c81fc8df33043cee8f9f51b0ac84b7cd4e1006a7f905c8feed",
  "kind": "class",
  "lexical_name": "LawfulTraversable",
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
  "slug": "lawfultraversable--c8f3aabddd7e8bec369d58f5",
  "source": {
    "blob": "7b6a87c39499f4617e9dcf845854f0e00c0780a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 258,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8f3aabddd7e8bec369d58f5076431a263fff587528ebd5bce32cd420a4a501e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e15cb66b3fdb97c81fc8df33043cee8f9f51b0ac84b7cd4e1006a7f905c8feed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulTraversable (t : Type u → Type u) [Traversable t] extends LawfulFunctor t :
    Prop where
  /-- `traverse` plays well with `pure` of the identity monad-/
  id_traverse : ∀ {α} (x : t α), traverse (pure : α → Id α) x = x
  /-- `traverse` plays well with composition of applicative functors. -/
  comp_traverse :
    ∀ {F G} [Applicative F] [Applicative G] [LawfulApplicative F] [LawfulApplicative G] {α β γ}
      (f : β → F γ) (g : α → G β) (x : t α),
      traverse (Functor.Comp.mk ∘ map f ∘ g) x = Comp.mk (map (traverse f) (traverse g x))
  /-- An axiom for `traverse` involving `pure : β → Id β`. -/
  traverse_eq_map_id : ∀ {α β} (f : α → β) (x : t α),
    traverse ((pure : β → Id β) ∘ f) x = id.mk (f <$> x)
  /-- The naturality axiom explaining how lawful traversable functors should play with
  lawful applicative functors. -/
  naturality :
    ∀ {F G} [Applicative F] [Applicative G] [LawfulApplicative F] [LawfulApplicative G]
      (η : ApplicativeTransformation F G) {α β} (f : α → F β) (x : t α),
      η (traverse f x) = traverse (@η _ ∘ f) x
#align is_lawful_traversable LawfulTraversable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b6a87c39499f4617e9dcf845854f0e00c0780a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
