# isSkewPrimitiveElem_map_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e6c2e78-eb94-c460-cd8a-48cb358eb48a",
  "kind": "lemma",
  "lexical_name": "isSkewPrimitiveElem_map_equiv",
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
  "slug": "isskewprimitiveelem-map-equiv--55916342f8f14bb1e34e69d2",
  "source": {
    "blob": "1c81adb006eb6526a19101f8a7c9f9b08c1cfbe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55916342f8f14bb1e34e69d2ff095c91e3796d4455c3c52591b89fbddcc6ac88",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e6c2e78-eb94-c460-cd8a-48cb358eb48a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma isSkewPrimitiveElem_map_equiv [EquivLike F A B] [CoalgEquivClass F R A B] (f : F) :
    IsSkewPrimitiveElem R (f g) (f h) (f a) ↔ IsSkewPrimitiveElem R g h a where
  mp ha :=
    let e := CoalgEquiv.ofClass f
    e.symm_apply_apply g ▸ e.symm_apply_apply h ▸ e.symm_apply_apply a ▸ ha.map _
  mpr := .map f

variable (R g h) in
/-- The `(g, h)`-skew-primitive elements form a submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c81adb006eb6526a19101f8a7c9f9b08c1cfbe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
