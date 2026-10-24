# Function.Injective.generalizedHeytingAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61b9f4ac224c904d64ac2abc9f87a5440f1d191c97a25dd0fbff9bf8d21b344a",
  "kind": "abbrev",
  "lexical_name": "Function.Injective.generalizedHeytingAlgebra",
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
  "slug": "function-injective-generalizedheytingalgebra--f7c1876f3d7fe56a88ee3022",
  "source": {
    "blob": "b6067f97ae83fdb4619eb8e4b234b12102cf754f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 832,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant9a7500c76c87a5cdbc0141090b4469f3077e1b7b82ff64ea12db0257a035e3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7c1876f3d7fe56a88ee302226866273cf292752c1531713b91cd1df7a7aafcb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant9a7500c76c87a5cdbc0141090b4469f3077e1b7b82ff64ea12db0257a035e3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61b9f4ac224c904d64ac2abc9f87a5440f1d191c97a25dd0fbff9bf8d21b344a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 832–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev Function.Injective.generalizedHeytingAlgebra [Max α] [Min α]
    [LE α] [LT α] [Top α] [HImp α] [GeneralizedHeytingAlgebra β] (f : α → β) (hf : Injective f)
    (le : ∀ {x y}, f x ≤ f y ↔ x ≤ y) (lt : ∀ {x y}, f x < f y ↔ x < y)
    (map_sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (map_inf : ∀ a b, f (a ⊓ b) = f a ⊓ f b)
    (map_top : f ⊤ = ⊤) (map_himp : ∀ a b, f (a ⇨ b) = f a ⇨ f b) :
    GeneralizedHeytingAlgebra α where
  __ := hf.lattice f le lt map_sup map_inf
  le_top a := by
    rw [← le, map_top]
    exact le_top
  le_himp_iff a b c := by
    rw [← le, ← le, map_himp, map_inf, le_himp_iff]

-- See note [reducible non-instances]
/-- Pullback a `GeneralizedCoheytingAlgebra` along an injection. -/
@[to_dual existing (reorder := 3 4, le (x y), lt (x y), map_sup map_inf, map_sdiff (a b))]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant9a7500c76c87a5cdbc0141090b4469f3077e1b7b82ff64ea12db0257a035e3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant9a7500c76c87a5cdbc0141090b4469f3077e1b7b82ff64ea12db0257a035e3b9.lean#L832).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6067f97ae83fdb4619eb8e4b234b12102cf754f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
