# map_real_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c2f0275-e035-a326-72f9-394242e3724d",
  "kind": "theorem",
  "lexical_name": "map_real_smul",
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
  "slug": "map-real-smul--7dccfaffdc65e7d5c14ae212",
  "source": {
    "blob": "291475058122b0b2ab0036ffb18ac8d05f76ce6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dccfaffdc65e7d5c14ae2123c90ca19d3b27b27b22a0c270c36af53b20d66da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c2f0275-e035-a326-72f9-394242e3724d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_real_smul {G} [FunLike G E F] [AddMonoidHomClass G E F] (f : G) (hf : Continuous f)
    (c : ℝ) (x : E) :
    f (c • x) = c • f x :=
  suffices (fun c : ℝ => f (c • x)) = fun c : ℝ => c • f x from congr_fun this c
  Rat.isDenseEmbedding_coe_real.dense.equalizer (hf.comp <| continuous_id.smul continuous_const)
    (continuous_id.smul continuous_const) (funext fun r => map_ratCast_smul f ℝ ℝ r x)

namespace AddMonoidHom

/-- Reinterpret a continuous additive homomorphism between two real vector spaces
as a continuous real-linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291475058122b0b2ab0036ffb18ac8d05f76ce6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
