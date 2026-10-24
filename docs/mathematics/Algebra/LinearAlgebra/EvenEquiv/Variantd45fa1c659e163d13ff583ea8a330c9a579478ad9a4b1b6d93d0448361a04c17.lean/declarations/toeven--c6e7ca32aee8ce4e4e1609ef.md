# toEven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf2fa3456831f6f70790d1d97ca1aef4724ffb4366fc9b32fe4a81fcafcf657c",
  "kind": "def",
  "lexical_name": "toEven",
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
  "slug": "toeven--c6e7ca32aee8ce4e4e1609ef",
  "source": {
    "blob": "b3dcf5c419f2659fb575f3dd8c51c96762578c9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6e7ca32aee8ce4e4e1609ef31b2e2aab592321f342459fb9967e7f0df58335d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf2fa3456831f6f70790d1d97ca1aef4724ffb4366fc9b32fe4a81fcafcf657c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toEven : CliffordAlgebra Q →ₐ[R] CliffordAlgebra.even (Q' Q) := by
  refine CliffordAlgebra.lift Q ⟨?_, fun m => ?_⟩
  · refine LinearMap.codRestrict _ ?_ fun m => Submodule.mem_iSup_of_mem ⟨2, rfl⟩ ?_
    · exact (LinearMap.mulLeft R <| e0 Q).comp (v Q)
    rw [Subtype.coe_mk, pow_two]
    exact Submodule.mul_mem_mul (LinearMap.mem_range_self _ _) (LinearMap.mem_range_self _ _)
  · ext1
    rw [Subalgebra.coe_mul]  -- Porting note: was part of the `dsimp only` below
    erw [LinearMap.codRestrict_apply] -- Porting note: was part of the `dsimp only` below
    dsimp only [LinearMap.comp_apply, LinearMap.mulLeft_apply, Subalgebra.coe_algebraMap]
    rw [← mul_assoc, e0_mul_v_mul_e0, v_sq_scalar]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3dcf5c419f2659fb575f3dd8c51c96762578c9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
