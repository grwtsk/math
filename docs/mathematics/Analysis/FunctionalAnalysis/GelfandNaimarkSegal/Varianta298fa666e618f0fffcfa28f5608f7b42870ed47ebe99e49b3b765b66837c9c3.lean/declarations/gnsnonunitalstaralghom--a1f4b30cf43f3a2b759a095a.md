# gnsNonUnitalStarAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc7dc030a7c86182e79b57eb776e76f9fea08d313c381beb1e3f438e97996df5",
  "kind": "def",
  "lexical_name": "gnsNonUnitalStarAlgHom",
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
  "slug": "gnsnonunitalstaralghom--a1f4b30cf43f3a2b759a095a",
  "source": {
    "blob": "f4eb326e23204bba9a86132fefb761c198fdc16f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 197,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1f4b30cf43f3a2b759a095a7056728c4f8b8f9a07d158a6cb3ece9dc3d5c2d5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc7dc030a7c86182e79b57eb776e76f9fea08d313c381beb1e3f438e97996df5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def gnsNonUnitalStarAlgHom : A →⋆ₙₐ[ℂ] (f.GNS →L[ℂ] f.GNS) where
  toFun a := (f.leftMulMapPreGNS a).completion
  map_smul' := by simp
  map_zero' := by simpa using f.completion_leftMulMapPreGNS_map_smul 0 0
  map_add' _ _ := by
    ext c
    induction c using induction_on with
      | hp => apply isClosed_eq <;> fun_prop
      | ih c => simp [add_mul, Completion.coe_add]
  map_mul' _ _ := by
    ext c
    induction c using induction_on with
      | hp => apply isClosed_eq <;> fun_prop
      | ih c => simp
  map_star' a := by
    refine (eq_adjoint_iff (f.leftMulMapPreGNS (star a)).completion
      (f.leftMulMapPreGNS a).completion).mpr ?_
    intro x y
    induction x, y using induction_on₂ with
    | hp => apply isClosed_eq <;> fun_prop
    | ih x y => simp [mul_assoc, preGNS_inner_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4eb326e23204bba9a86132fefb761c198fdc16f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
