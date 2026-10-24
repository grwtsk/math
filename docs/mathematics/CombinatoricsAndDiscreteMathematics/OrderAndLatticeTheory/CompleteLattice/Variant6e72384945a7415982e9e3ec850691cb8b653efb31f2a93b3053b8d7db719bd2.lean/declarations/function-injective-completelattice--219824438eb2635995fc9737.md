# Function.Injective.completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6548e6d02483330a8e92b112ecce0da6e45cd3c21020eff008dd850f00f051be",
  "kind": "def",
  "lexical_name": "Function.Injective.completeLattice",
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
  "slug": "function-injective-completelattice--219824438eb2635995fc9737",
  "source": {
    "blob": "25ded1fcc6911842596498dabc0f4be401b59b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1989,
    "line": 1971,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant6e72384945a7415982e9e3ec850691cb8b653efb31f2a93b3053b8d7db719bd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:219824438eb2635995fc97370856dfafc3ec2ff77ee1846fba66cfa2652bb59b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant6e72384945a7415982e9e3ec850691cb8b653efb31f2a93b3053b8d7db719bd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6548e6d02483330a8e92b112ecce0da6e45cd3c21020eff008dd850f00f051be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1971–1989.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Function.Injective.completeLattice [Sup α] [Inf α] [SupSet α] [InfSet α] [Top α]
    [Bot α] [CompleteLattice β] (f : α → β) (hf : Function.Injective f)
    (map_sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (map_inf : ∀ a b, f (a ⊓ b) = f a ⊓ f b)
    (map_sSup : ∀ s, f (sSup s) = ⨆ a ∈ s, f a) (map_sInf : ∀ s, f (sInf s) = ⨅ a ∈ s, f a)
    (map_top : f ⊤ = ⊤) (map_bot : f ⊥ = ⊥) : CompleteLattice α :=
  { -- we cannot use BoundedOrder.lift here as the `LE` instance doesn't exist yet
    hf.lattice f map_sup map_inf with
    le_sSup := fun _ a h => (le_iSup₂ a h).trans (map_sSup _).ge
    sSup_le := fun _ _ h => (map_sSup _).trans_le <| iSup₂_le h
    sInf_le := fun _ a h => (map_sInf _).trans_le <| iInf₂_le a h
    le_sInf := fun _ _ h => (le_iInf₂ h).trans (map_sInf _).ge
    top := ⊤
    le_top := fun _ => (@le_top β _ _ _).trans map_top.ge
    bot := ⊥
    bot_le := fun _ => map_bot.le.trans bot_le }
#align function.injective.complete_lattice Function.Injective.completeLattice

namespace ULift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant6e72384945a7415982e9e3ec850691cb8b653efb31f2a93b3053b8d7db719bd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant6e72384945a7415982e9e3ec850691cb8b653efb31f2a93b3053b8d7db719bd2.lean#L1971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25ded1fcc6911842596498dabc0f4be401b59b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
