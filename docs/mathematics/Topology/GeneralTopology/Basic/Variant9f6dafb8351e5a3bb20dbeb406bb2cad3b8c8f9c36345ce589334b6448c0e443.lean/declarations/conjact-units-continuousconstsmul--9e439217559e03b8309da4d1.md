# ConjAct.units_continuousConstSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66465cf0690261cb5738e095e7b363507ab0f2c002170b97e4b4091b13cc277e",
  "kind": "instance",
  "lexical_name": "ConjAct.units_continuousConstSMul",
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
  "slug": "conjact-units-continuousconstsmul--9e439217559e03b8309da4d1",
  "source": {
    "blob": "8930608628edba125974e1607df70bc6228781c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 353,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e439217559e03b8309da4d1cfd22ac553f95e9ab77a82ad8b2a60a028f5b907",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66465cf0690261cb5738e095e7b363507ab0f2c002170b97e4b4091b13cc277e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ConjAct.units_continuousConstSMul {M} [Monoid M] [TopologicalSpace M]
    [ContinuousMul M] : ContinuousConstSMul (ConjAct Mˣ) M :=
  ⟨fun _ => (continuous_const.mul continuous_id).mul continuous_const⟩

variable [TopologicalSpace G] [Inv G] [Mul G] [ContinuousMul G]

/-- Conjugation is jointly continuous on `G × G` when both `mul` and `inv` are continuous. -/
@[to_additive continuous_addConj_prod
  "Conjugation is jointly continuous on `G × G` when both `add` and `neg` are continuous."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8930608628edba125974e1607df70bc6228781c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
