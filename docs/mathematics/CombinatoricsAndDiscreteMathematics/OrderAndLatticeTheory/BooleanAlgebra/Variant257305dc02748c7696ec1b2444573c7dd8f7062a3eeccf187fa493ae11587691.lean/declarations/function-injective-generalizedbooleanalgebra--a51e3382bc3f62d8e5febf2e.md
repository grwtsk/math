# Function.Injective.generalizedBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4d40604f9e30b8e58a0f8e731c4c56e0b5557e9f512ca8cd7a46590b602dbbd",
  "kind": "def",
  "lexical_name": "Function.Injective.generalizedBooleanAlgebra",
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
  "slug": "function-injective-generalizedbooleanalgebra--a51e3382bc3f62d8e5febf2e",
  "source": {
    "blob": "73d22c525de3bdc5cd20e9bc5548f48e88d397bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 841,
    "line": 828,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a51e3382bc3f62d8e5febf2e2a007fb0d1759206963cfc9047bc507fa7fb97d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4d40604f9e30b8e58a0f8e731c4c56e0b5557e9f512ca8cd7a46590b602dbbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 828–841.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Function.Injective.generalizedBooleanAlgebra [Sup α] [Inf α] [Bot α] [SDiff α]
    [GeneralizedBooleanAlgebra β] (f : α → β) (hf : Injective f)
    (map_sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (map_inf : ∀ a b, f (a ⊓ b) = f a ⊓ f b)
    (map_bot : f ⊥ = ⊥) (map_sdiff : ∀ a b, f (a \ b) = f a \ f b) :
    GeneralizedBooleanAlgebra α :=
  { hf.generalizedCoheytingAlgebra f map_sup map_inf map_bot map_sdiff,
    hf.distribLattice f map_sup map_inf with
    sup_inf_sdiff := fun a b => hf <| by erw [map_sup, map_sdiff, map_inf, sup_inf_sdiff],
    inf_inf_sdiff := fun a b => hf <| by erw [map_inf, map_sdiff, map_inf, inf_inf_sdiff, map_bot] }
#align function.injective.generalized_boolean_algebra Function.Injective.generalizedBooleanAlgebra

-- See note [reducible non-instances]
/-- Pullback a `BooleanAlgebra` along an injection. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean#L828).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d22c525de3bdc5cd20e9bc5548f48e88d397bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
