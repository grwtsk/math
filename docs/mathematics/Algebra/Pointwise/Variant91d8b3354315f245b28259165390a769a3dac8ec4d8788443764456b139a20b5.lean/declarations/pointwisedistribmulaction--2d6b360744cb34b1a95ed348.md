# pointwiseDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27aeffa29e33fa59c135afa46e833dd3c78609f03e518d2dc3cebf300b0ac7bb",
  "kind": "def",
  "lexical_name": "pointwiseDistribMulAction",
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
  "slug": "pointwisedistribmulaction--2d6b360744cb34b1a95ed348",
  "source": {
    "blob": "1855fd9ff8ddd5c1cf65b8b7fd365aed6529ac58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 50,
    "path": "GRWTSK/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d6b360744cb34b1a95ed3484f7e75febfa51b3c8b516aff923da76533f21c35",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27aeffa29e33fa59c135afa46e833dd3c78609f03e518d2dc3cebf300b0ac7bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def pointwiseDistribMulAction : DistribMulAction M (Ideal R) where
  smul a := Ideal.map (MulSemiringAction.toRingHom _ _ a)
  one_smul I :=
    congr_arg (I.map ·) (RingHom.ext <| one_smul M) |>.trans I.map_id
  mul_smul _ _ I :=
    congr_arg (I.map ·) (RingHom.ext <| mul_smul _ _) |>.trans (I.map_map _ _).symm
  smul_zero _ := Ideal.map_bot
  smul_add _ I J := Ideal.map_sup _ I J

scoped[Pointwise] attribute [instance] Ideal.pointwiseDistribMulAction

open scoped Pointwise

/-- The action on an ideal corresponding to applying the action to every element.

This is available as an instance in the `Pointwise` locale. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1855fd9ff8ddd5c1cf65b8b7fd365aed6529ac58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
