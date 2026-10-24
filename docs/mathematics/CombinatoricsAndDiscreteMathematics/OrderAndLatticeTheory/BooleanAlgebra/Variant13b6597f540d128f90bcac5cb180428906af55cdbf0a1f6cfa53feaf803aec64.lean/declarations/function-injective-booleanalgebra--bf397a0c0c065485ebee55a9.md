# Function.Injective.booleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8b769e281f3e807f1a62136d74e15e76f2138cb69b0c2bdf1786f24dee37ba4",
  "kind": "def",
  "lexical_name": "Function.Injective.booleanAlgebra",
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
  "slug": "function-injective-booleanalgebra--bf397a0c0c065485ebee55a9",
  "source": {
    "blob": "b1930460f4bfce6cf5bd41f27b0165fa5d58b6b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 854,
    "line": 834,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant13b6597f540d128f90bcac5cb180428906af55cdbf0a1f6cfa53feaf803aec64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf397a0c0c065485ebee55a90a218c42d5f849ee2588a77a717a1a0ffa8d17d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant13b6597f540d128f90bcac5cb180428906af55cdbf0a1f6cfa53feaf803aec64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8b769e281f3e807f1a62136d74e15e76f2138cb69b0c2bdf1786f24dee37ba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 834–854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Function.Injective.booleanAlgebra [Sup α] [Inf α] [Top α] [Bot α] [HasCompl α]
    [SDiff α] [BooleanAlgebra β] (f : α → β) (hf : Injective f)
    (map_sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (map_inf : ∀ a b, f (a ⊓ b) = f a ⊓ f b)
    (map_top : f ⊤ = ⊤) (map_bot : f ⊥ = ⊥) (map_compl : ∀ a, f aᶜ = (f a)ᶜ)
    (map_sdiff : ∀ a b, f (a \ b) = f a \ f b) : BooleanAlgebra α :=
  { hf.generalizedBooleanAlgebra f map_sup map_inf map_bot map_sdiff with
    compl := compl,
    top := ⊤,
    le_top := fun a => (@le_top β _ _ _).trans map_top.ge,
    bot_le := fun a => map_bot.le.trans bot_le,
    inf_compl_le_bot :=
      fun a => ((map_inf _ _).trans <| by rw [map_compl, inf_compl_eq_bot, map_bot]).le,
    top_le_sup_compl :=
      fun a => ((map_sup _ _).trans <| by rw [map_compl, sup_compl_eq_top, map_top]).ge,
    sdiff_eq := fun a b => by
      refine hf ((map_sdiff _ _).trans (sdiff_eq.trans ?_))
      rw [map_inf, map_compl] }
#align function.injective.boolean_algebra Function.Injective.booleanAlgebra

end lift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant13b6597f540d128f90bcac5cb180428906af55cdbf0a1f6cfa53feaf803aec64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant13b6597f540d128f90bcac5cb180428906af55cdbf0a1f6cfa53feaf803aec64.lean#L834).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1930460f4bfce6cf5bd41f27b0165fa5d58b6b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
