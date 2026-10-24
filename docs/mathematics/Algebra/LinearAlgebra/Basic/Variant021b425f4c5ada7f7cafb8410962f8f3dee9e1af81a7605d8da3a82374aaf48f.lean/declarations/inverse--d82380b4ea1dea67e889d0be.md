# inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9eda809d6a0ee24928c09a53e79d24425e9a2971d1a0296c4a37520947ba14bb",
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
  "slug": "inverse--d82380b4ea1dea67e889d0be",
  "source": {
    "blob": "0e49929ab85afc961a41ef0d303986690b0d3b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 868,
    "line": 857,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant021b425f4c5ada7f7cafb8410962f8f3dee9e1af81a7605d8da3a82374aaf48f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d82380b4ea1dea67e889d0be399f70e3563cb832975fbd696302ce99366156c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant021b425f4c5ada7f7cafb8410962f8f3dee9e1af81a7605d8da3a82374aaf48f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9eda809d6a0ee24928c09a53e79d24425e9a2971d1a0296c4a37520947ba14bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 857–868.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inverse (f : M →ₗ⁅R,L⁆ N) (g : N → M) (h₁ : Function.LeftInverse g f)
    (h₂ : Function.RightInverse g f) : N →ₗ⁅R,L⁆ M :=
  { LinearMap.inverse f.toLinearMap g h₁ h₂ with
    map_lie' := by
      intros x n
      calc
        g ⁅x, n⁆ = g ⁅x, f (g n)⁆ := by rw [h₂]
        _ = g (f ⁅x, g n⁆) := by rw [map_lie]
        _ = ⁅x, g n⁆ := h₁ _
         }
#align lie_module_hom.inverse LieModuleHom.inverse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant021b425f4c5ada7f7cafb8410962f8f3dee9e1af81a7605d8da3a82374aaf48f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant021b425f4c5ada7f7cafb8410962f8f3dee9e1af81a7605d8da3a82374aaf48f.lean#L857).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e49929ab85afc961a41ef0d303986690b0d3b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
