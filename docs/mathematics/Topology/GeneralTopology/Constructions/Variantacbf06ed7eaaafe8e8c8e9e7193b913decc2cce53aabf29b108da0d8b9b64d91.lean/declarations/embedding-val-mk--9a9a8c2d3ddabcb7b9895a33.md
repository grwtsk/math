# embedding_val_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:755805a2-3791-7387-46bb-0841e291499f",
  "kind": "lemma",
  "lexical_name": "embedding_val_mk",
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
  "slug": "embedding-val-mk--9a9a8c2d3ddabcb7b9895a33",
  "source": {
    "blob": "88273f8fb43164020b433bef976c38193aa60069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a9a8c2d3ddabcb7b9895a33ef21322fa4ee1ec28df2fa20a1ed8379ad7c969a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:755805a2-3791-7387-46bb-0841e291499f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma embedding_val_mk {M : Type*} [DivisionMonoid M] [TopologicalSpace M]
    (h : ContinuousOn Inv.inv {x : M | IsUnit x}) : Embedding (val : Mˣ → M) :=
  embedding_val_mk' h fun u ↦ (val_inv_eq_inv_val u).symm
#align units.embedding_coe_mk Units.embedding_val_mk
#align add_units.embedding_coe_mk AddUnits.embedding_val_mk

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88273f8fb43164020b433bef976c38193aa60069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
