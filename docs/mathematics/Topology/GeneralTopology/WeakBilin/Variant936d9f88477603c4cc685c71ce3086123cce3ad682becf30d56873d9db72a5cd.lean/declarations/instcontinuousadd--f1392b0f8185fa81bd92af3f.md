# instContinuousAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77cbaad3fa0a47bf968751acb1e0b60035faf26925e7127d85689e876e8152f0",
  "kind": "instance",
  "lexical_name": "instContinuousAdd",
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
  "slug": "instcontinuousadd--f1392b0f8185fa81bd92af3f",
  "source": {
    "blob": "b60dc7bddcd73b8e6136c134fe374efa9d4ca242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1392b0f8185fa81bd92af3feb24216161564c3665390c5e67dd0ecff2dfbd91",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77cbaad3fa0a47bf968751acb1e0b60035faf26925e7127d85689e876e8152f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instContinuousAdd [ContinuousAdd 𝕜] : ContinuousAdd (WeakBilin B) := by
  refine ⟨continuous_induced_rng.2 ?_⟩
  refine
    cast (congr_arg _ ?_)
      (((coeFn_continuous B).comp continuous_fst).add ((coeFn_continuous B).comp continuous_snd))
  ext
  simp only [Function.comp_apply, Pi.add_apply, map_add, LinearMap.add_apply]

/-- Scalar multiplication by `𝕜` on `WeakBilin B` is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60dc7bddcd73b8e6136c134fe374efa9d4ca242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
