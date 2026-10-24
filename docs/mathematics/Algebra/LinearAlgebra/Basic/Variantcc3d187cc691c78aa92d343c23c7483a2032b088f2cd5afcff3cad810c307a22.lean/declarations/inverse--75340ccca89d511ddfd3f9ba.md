# inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6bfcc4e3a1573611025e26596319f889a3bcdfb5c1dab9ae19f1e054bbe870c",
  "kind": "def",
  "lexical_name": "inverse",
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
  "slug": "inverse--75340ccca89d511ddfd3f9ba",
  "source": {
    "blob": "79841d559221f02a844d5c36243d1779c24acc6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 443,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcc3d187cc691c78aa92d343c23c7483a2032b088f2cd5afcff3cad810c307a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75340ccca89d511ddfd3f9badc56e9ff8d1585027785dcbb91744e981c0d5ea9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcc3d187cc691c78aa92d343c23c7483a2032b088f2cd5afcff3cad810c307a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6bfcc4e3a1573611025e26596319f889a3bcdfb5c1dab9ae19f1e054bbe870c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inverse (f : L₁ →ₗ⁅R⁆ L₂) (g : L₂ → L₁) (h₁ : Function.LeftInverse g f)
    (h₂ : Function.RightInverse g f) : L₂ →ₗ⁅R⁆ L₁ :=
  { LinearMap.inverse f.toLinearMap g h₁ h₂ with
    map_lie' := by
      intros x y
      calc
        g ⁅x, y⁆ = g ⁅f (g x), f (g y)⁆ := by conv_lhs => rw [← h₂ x, ← h₂ y]
        _ = g (f ⁅g x, g y⁆) := by rw [map_lie]
        _ = ⁅g x, g y⁆ := h₁ _
         }
#align lie_hom.inverse LieHom.inverse

end LieHom

section ModulePullBack

variable {R : Type u} {L₁ : Type v} {L₂ : Type w} (M : Type w₁)

variable [CommRing R] [LieRing L₁] [LieAlgebra R L₁] [LieRing L₂] [LieAlgebra R L₂]

variable [AddCommGroup M] [LieRingModule L₂ M]

variable (f : L₁ →ₗ⁅R⁆ L₂)

/-- A Lie ring module may be pulled back along a morphism of Lie algebras.

See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcc3d187cc691c78aa92d343c23c7483a2032b088f2cd5afcff3cad810c307a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcc3d187cc691c78aa92d343c23c7483a2032b088f2cd5afcff3cad810c307a22.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79841d559221f02a844d5c36243d1779c24acc6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
