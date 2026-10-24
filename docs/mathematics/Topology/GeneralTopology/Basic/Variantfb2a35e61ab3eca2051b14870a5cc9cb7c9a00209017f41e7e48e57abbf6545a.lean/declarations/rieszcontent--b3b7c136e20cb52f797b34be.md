# rieszContent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa50f719bf3856e3b67e13d9aca80502def0d5066e9bdb1f3ef21299a31ad3f6",
  "kind": "def",
  "lexical_name": "rieszContent",
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
  "slug": "rieszcontent--b3b7c136e20cb52f797b34be",
  "source": {
    "blob": "c815a40e88877056dcb31ecbe757ca3bb9b3702f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 283,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3b7c136e20cb52f797b34beb1a267091a630903f9ab6ace0f44b1ce781ffe56",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa50f719bf3856e3b67e13d9aca80502def0d5066e9bdb1f3ef21299a31ad3f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rieszContent (Λ : C_c(X, ℝ≥0) →ₗ[ℝ≥0] ℝ≥0) : Content X where
  toFun := rieszContentAux Λ
  mono' := fun _ _ ↦ rieszContentAux_mono Λ
  sup_disjoint' := fun _ _ disj _ _ ↦ rieszContentAux_union Λ disj
  sup_le' := rieszContentAux_sup_le Λ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c815a40e88877056dcb31ecbe757ca3bb9b3702f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
