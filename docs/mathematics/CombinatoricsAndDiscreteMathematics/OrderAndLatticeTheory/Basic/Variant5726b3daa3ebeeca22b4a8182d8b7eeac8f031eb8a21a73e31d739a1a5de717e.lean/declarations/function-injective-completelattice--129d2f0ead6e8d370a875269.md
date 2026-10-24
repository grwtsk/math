# Function.Injective.completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7261257a39e509e9e6925464046e7efc9183a6fd8b0daf0ebb271277282290c4",
  "kind": "abbrev",
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
  "slug": "function-injective-completelattice--129d2f0ead6e8d370a875269",
  "source": {
    "blob": "4f9c3e7ef0b053b43820e6f45054b6c046a30254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 968,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5726b3daa3ebeeca22b4a8182d8b7eeac8f031eb8a21a73e31d739a1a5de717e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:129d2f0ead6e8d370a8752692e96e8a602c0f9d07129e4f76bf2dc1ff023ae00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5726b3daa3ebeeca22b4a8182d8b7eeac8f031eb8a21a73e31d739a1a5de717e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7261257a39e509e9e6925464046e7efc9183a6fd8b0daf0ebb271277282290c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 968–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev Function.Injective.completeLattice [Max α] [Min α] [LE α] [LT α]
    [SupSet α] [InfSet α] [Top α] [Bot α] [CompleteLattice β]
    (f : α → β) (hf : Function.Injective f)
    (le : ∀ {x y}, f x ≤ f y ↔ x ≤ y) (lt : ∀ {x y}, f x < f y ↔ x < y)
    (map_sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (map_inf : ∀ a b, f (a ⊓ b) = f a ⊓ f b)
    (map_sSup : ∀ s, f (sSup s) = ⨆ a ∈ s, f a) (map_sInf : ∀ s, f (sInf s) = ⨅ a ∈ s, f a)
    (map_top : f ⊤ = ⊤) (map_bot : f ⊥ = ⊥) : CompleteLattice α where
  __ := hf.lattice f le lt map_sup map_inf
  __ := BoundedOrder.lift f (fun _ _ ↦ le.1) map_top map_bot
  isLUB_sSup _ := .of_image le (by rw [map_sSup]; exact isLUB_biSup)
  isGLB_sInf _ := .of_image le (by rw [map_sInf]; exact isGLB_biInf)

namespace Equiv

variable (e : α ≃ β)

/-- Transfer `CompleteLattice` across an `Equiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5726b3daa3ebeeca22b4a8182d8b7eeac8f031eb8a21a73e31d739a1a5de717e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5726b3daa3ebeeca22b4a8182d8b7eeac8f031eb8a21a73e31d739a1a5de717e.lean#L968).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f9c3e7ef0b053b43820e6f45054b6c046a30254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
