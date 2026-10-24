# f2LinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b4a9062342d867c9ee435d1c24d395fb39cc51b0b0aac9d0b1a691515795678",
  "kind": "def",
  "lexical_name": "f2LinearEquiv",
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
  "slug": "f2linearequiv--7f15ffb8383ff878931e72af",
  "source": {
    "blob": "49dde925f88b40b584b090b9ce46113e79a23046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f15ffb8383ff878931e72af59b48e525cc322c0b526ce98003e512e55169466",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b4a9062342d867c9ee435d1c24d395fb39cc51b0b0aac9d0b1a691515795678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def f2LinearEquiv :
    (Fin P.width → ZMod 2) ≃ₗ[ZMod 2] (Fin P.width → ZMod 2) where
  toFun := P.f2LinearMap
  invFun := P.f2LinearMap
  map_add' := P.f2LinearMap.map_add
  map_smul' := P.f2LinearMap.map_smul
  left_inv := P.f2LinearMap_involutive
  right_inv := P.f2LinearMap_involutive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49dde925f88b40b584b090b9ce46113e79a23046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
