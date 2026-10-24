# decompHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9b301103df5a79cd1e9017a215c100ec0bc6fd36ce9c168a7588da6e0cd4f44",
  "kind": "def",
  "lexical_name": "decompHomeomorph",
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
  "slug": "decomphomeomorph--ae93cccf30e2fad7cb6974d4",
  "source": {
    "blob": "cdfadf4530dd2e13b784785995b39594367aaf8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae93cccf30e2fad7cb6974d49fbf633ccc060190ed18a53dfd94920efc3291ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9b301103df5a79cd1e9017a215c100ec0bc6fd36ce9c168a7588da6e0cd4f44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decompHomeomorph : (V →ᴬ[R] Q) ≃ₜ (Q × (V →L[R] W)) where
  __ := decompEquiv R V Q
  continuous_toFun := (continuous_eval_const 0).prodMk continuous_contLinear
  continuous_invFun := continuous_rng
    (by simp_rw [Equiv.invFun_as_coe, decompEquiv_symm_apply]; fun_prop)
    (by simp_rw [Equiv.invFun_as_coe, decompEquiv_symm_contLinear]; fun_prop)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdfadf4530dd2e13b784785995b39594367aaf8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
