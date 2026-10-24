# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37c2f504d3f6b8097a5a13653ac84c7a4391832327efeec63694544a80b87791",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c9946eb9a13b3d215dd12a87",
  "source": {
    "blob": "5fc92a1077c12d0a8cc631be7a9a87c648f1eb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9946eb9a13b3d215dd12a872e189a1c41f4d472678e864cd903504666d08faa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37c2f504d3f6b8097a5a13653ac84c7a4391832327efeec63694544a80b87791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {α : Type u} [Preorder α] [ULiftable m m'] [BoundedRandom m α] [Monad m'] :
    BoundedRandom m' (ULift.{v} α) where
  randomR lo hi h := do
    let ⟨x⟩ ← ULiftable.up.{v} (BoundedRandom.randomR lo.down hi.down h)
    pure ⟨ULift.up x.val, x.prop⟩

end Random

namespace IO

variable {m : Type* → Type*} {m₀ : Type → Type}
variable [Monad m] [MonadLiftT (ST RealWorld) m₀] [ULiftable m₀ m]

/--
Execute `RandT m α` using the global `stdGenRef` as RNG.

Note that:
- `stdGenRef` is not necessarily properly seeded on program startup
  as of now and will therefore be deterministic.
- `stdGenRef` is not thread local, hence two threads accessing it
  at the same time will get the exact same generator.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc92a1077c12d0a8cc631be7a9a87c648f1eb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
