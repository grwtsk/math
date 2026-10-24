# _root_.ContinuousOn.prod_map_equivL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9787fccacfb1d2965d37ef10eff3ff863fdcb3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ffc8219-96d9-a07b-37d2-60f5f951a406",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:199d084a-b641-5bf4-c374-467f6f28c4bd",
  "kind": "theorem",
  "lexical_name": "_root_.ContinuousOn.prod_map_equivL",
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
  "slug": "root-continuouson-prod-map-equivl--02b4edff0899d93837f8b80b",
  "source": {
    "blob": "e9787fccacfb1d2965d37ef10eff3ff863fdcb3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02b4edff0899d93837f8b80b13d025333e4876d2fb91269ed04d901a13cad1a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:199d084a-b641-5bf4-c374-467f6f28c4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.ContinuousOn.prod_map_equivL {f : X → M₁ ≃L[𝕜] M₂} {g : X → M₃ ≃L[𝕜] M₄} {s : Set X}
    (hf : ContinuousOn (fun x => (f x : M₁ →L[𝕜] M₂)) s)
    (hg : ContinuousOn (fun x => (g x : M₃ →L[𝕜] M₄)) s) :
    ContinuousOn (fun x => ((f x).prodCongr (g x) : M₁ × M₃ →L[𝕜] M₂ × M₄)) s :=
  hf.prod_mapL _ hg

end Prod

end ContinuousLinearMap

end SemiNormed

section Normed

namespace ContinuousLinearMap

section FirstSecond

variable (𝕜 E F)

/-- The operator norm of the first projection `E × F → E` is exactly 1 if `E` is nontrivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9787fccacfb1d2965d37ef10eff3ff863fdcb3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
