# Function.Injective.generalizedHeytingAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:065ef7284ae2cdcca1b93de77f34a689b490fef8c578df18e756a227044d52dc",
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
  "slug": "function-injective-generalizedheytingalgebra--f6222335f468f82f82030540",
  "source": {
    "blob": "e9310e68c204f77024fbe312b2b87dd13eab3f62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 839,
    "line": 824,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1e51685a7b722d99cfef7e3997004c31aa2b5ef95ac402258ae8d5d9bc65b28f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6222335f468f82f820305402b38f57335a645f381a3cc1a102cfd7a2c6e8f46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1e51685a7b722d99cfef7e3997004c31aa2b5ef95ac402258ae8d5d9bc65b28f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:065ef7284ae2cdcca1b93de77f34a689b490fef8c578df18e756a227044d52dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–839.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1e51685a7b722d99cfef7e3997004c31aa2b5ef95ac402258ae8d5d9bc65b28f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1e51685a7b722d99cfef7e3997004c31aa2b5ef95ac402258ae8d5d9bc65b28f.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9310e68c204f77024fbe312b2b87dd13eab3f62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
