# ContinuousLinearMap.norm_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56010623-75c8-cee9-df7a-19cc223dc08c",
  "kind": "lemma",
  "lexical_name": "ContinuousLinearMap.norm_single",
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
  "slug": "continuouslinearmap-norm-single--e749cba8948eebfbcd7e10bd",
  "source": {
    "blob": "734164008bf7764323566e441eaca2547605822e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 403,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e749cba8948eebfbcd7e10bdc895a5734ba57ac0202cbe372f1e44f776bfaf01",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56010623-75c8-cee9-df7a-19cc223dc08c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousLinearMap.norm_single [∀ i, SeminormedAddCommGroup (E i)]
    [∀ i, NormedSpace 𝕜 (E i)] (i : ι) [NontrivialTopology (E i)] :
    ‖ContinuousLinearMap.single 𝕜 E i‖ = 1 :=
  (LinearIsometry.single 𝕜 E i).norm_toContinuousLinearMap

end single

section inl_inr

variable (𝕜 : Type*) [NontriviallyNormedField 𝕜] (E F : Type*)

/-- The injection `x ↦ LinearMap.inl E F x` as a linear isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `734164008bf7764323566e441eaca2547605822e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
