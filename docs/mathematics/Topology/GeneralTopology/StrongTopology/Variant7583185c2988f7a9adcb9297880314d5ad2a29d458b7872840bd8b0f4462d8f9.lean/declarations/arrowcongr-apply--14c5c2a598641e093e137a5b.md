# arrowCongr_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:913fbc26-5ca4-3994-3e72-c8bf602c3800",
  "kind": "lemma",
  "lexical_name": "arrowCongr_apply",
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
  "slug": "arrowcongr-apply--14c5c2a598641e093e137a5b",
  "source": {
    "blob": "b6c07d5b7c25520a8e1d73f1818fd6138d3bf304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 635,
    "path": "GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14c5c2a598641e093e137a5b6a6da16fb0fc1b46234ca70ae5c53bf18313c51a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:913fbc26-5ca4-3994-3e72-c8bf602c3800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma arrowCongr_apply (e₁ : E ≃L[𝕜] F) (e₂ : H ≃L[𝕜] G) (f : E →L[𝕜] H) (x : F) :
    e₁.arrowCongr e₂ f x = e₂ (f (e₁.symm x)) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c07d5b7c25520a8e1d73f1818fd6138d3bf304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
