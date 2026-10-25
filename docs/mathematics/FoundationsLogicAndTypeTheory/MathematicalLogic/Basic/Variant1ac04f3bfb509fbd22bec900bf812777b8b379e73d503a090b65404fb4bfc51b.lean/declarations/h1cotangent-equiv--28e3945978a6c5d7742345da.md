# H1Cotangent.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dab857007a080ac7f854b9f8fd1f9c813f0480c186bba8cea81c5227dcc408d",
  "kind": "def",
  "lexical_name": "H1Cotangent.equiv",
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
  "slug": "h1cotangent-equiv--28e3945978a6c5d7742345da",
  "source": {
    "blob": "b3b2e610fba789dd6a09d665dc8fb2346fd8a9ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 365,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28e3945978a6c5d7742345da5c3fd515b9207260949ec14fff6998ec8d531efb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dab857007a080ac7f854b9f8fd1f9c813f0480c186bba8cea81c5227dcc408d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def H1Cotangent.equiv {P₁ P₂ : Extension R S} (f₁ : P₁.Hom P₂) (f₂ : P₂.Hom P₁) :
    P₁.H1Cotangent ≃ₗ[S] P₂.H1Cotangent where
  __ := map f₁
  invFun := map f₂
  left_inv x :=
    show (map f₂ ∘ₗ map f₁) x = LinearMap.id x by
    rw [← Extension.H1Cotangent.map_id, eq_comm, map_eq _ (f₂.comp f₁),
      Extension.H1Cotangent.map_comp]; rfl
  right_inv x :=
    show (map f₁ ∘ₗ map f₂) x = LinearMap.id x by
    rw [← Extension.H1Cotangent.map_id, eq_comm, map_eq _ (f₁.comp f₂),
      Extension.H1Cotangent.map_comp]; rfl

end Extension

namespace Generators

variable (P : Generators.{w} R S)

/-- The canonical basis on the `CotangentSpace`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3b2e610fba789dd6a09d665dc8fb2346fd8a9ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
