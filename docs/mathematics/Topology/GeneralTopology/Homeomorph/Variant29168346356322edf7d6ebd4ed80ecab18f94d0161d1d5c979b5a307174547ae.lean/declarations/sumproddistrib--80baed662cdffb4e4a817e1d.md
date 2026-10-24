# sumProdDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd78daf64c41cbed1e75301afb8628e47ce4ed5b15e8c4c739710a63a14a7e4e",
  "kind": "def",
  "lexical_name": "sumProdDistrib",
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
  "slug": "sumproddistrib--80baed662cdffb4e4a817e1d",
  "source": {
    "blob": "59c70be60616f07ca272b74fba5111a136ef604f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 604,
    "path": "GRWTSK/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80baed662cdffb4e4a817e1d747a9628885b57ca014919f7caeb6d6c8f49a6cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd78daf64c41cbed1e75301afb8628e47ce4ed5b15e8c4c739710a63a14a7e4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumProdDistrib : Sum α β × γ ≃ₜ Sum (α × γ) (β × γ) :=
  Homeomorph.symm <|
    homeomorphOfContinuousOpen (Equiv.sumProdDistrib α β γ).symm
        ((continuous_inl.prod_map continuous_id).sum_elim
          (continuous_inr.prod_map continuous_id)) <|
      (isOpenMap_inl.prod IsOpenMap.id).sum_elim (isOpenMap_inr.prod IsOpenMap.id)
#align homeomorph.sum_prod_distrib Homeomorph.sumProdDistrib

/-- `α × (β ⊕ γ)` is homeomorphic to `α × β ⊕ α × γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c70be60616f07ca272b74fba5111a136ef604f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
