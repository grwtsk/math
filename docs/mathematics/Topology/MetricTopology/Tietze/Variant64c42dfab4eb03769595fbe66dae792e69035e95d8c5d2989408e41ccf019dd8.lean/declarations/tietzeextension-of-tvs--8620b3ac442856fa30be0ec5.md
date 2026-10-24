# TietzeExtension.of_tvs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:587339ea-bf48-9425-004b-ad0045f41c4e",
  "kind": "theorem",
  "lexical_name": "TietzeExtension.of_tvs",
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
  "slug": "tietzeextension-of-tvs--8620b3ac442856fa30be0ec5",
  "source": {
    "blob": "801c9a21c4027a679ff374fd1253df3e97900b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8620b3ac442856fa30be0ec5deb1dc67f52fbbe5fd5540aaf5f373c0226b9f47",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:587339ea-bf48-9425-004b-ad0045f41c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TietzeExtension.of_tvs (𝕜 : Type v) [NontriviallyNormedField 𝕜] {E : Type w}
    [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E] [IsTopologicalAddGroup E]
    [ContinuousSMul 𝕜 E] [T2Space E] [FiniteDimensional 𝕜 E] [CompleteSpace 𝕜]
    [TietzeExtension.{u, v} 𝕜] : TietzeExtension.{u, w} E :=
  Basis.ofVectorSpace 𝕜 E |>.equivFun.toContinuousLinearEquiv.toHomeomorph |> .of_homeo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801c9a21c4027a679ff374fd1253df3e97900b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
