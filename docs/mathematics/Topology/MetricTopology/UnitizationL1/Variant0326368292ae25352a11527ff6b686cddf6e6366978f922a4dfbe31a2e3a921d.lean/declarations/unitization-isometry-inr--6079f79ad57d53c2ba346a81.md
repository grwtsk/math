# unitization_isometry_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "240ef7cffdec19da2e6eca3ddf1306b2808e371f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cde6c12f-43ba-13ad-18a8-92114299234b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04d58395-14e9-90c1-5d84-69bd5910ca0c",
  "kind": "lemma",
  "lexical_name": "unitization_isometry_inr",
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
  "slug": "unitization-isometry-inr--6079f79ad57d53c2ba346a81",
  "source": {
    "blob": "240ef7cffdec19da2e6eca3ddf1306b2808e371f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6079f79ad57d53c2ba346a81bebd09f5e989a8a10fdd6c790d0fd7a620f3d906",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d58395-14e9-90c1-5d84-69bd5910ca0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unitization_isometry_inr :
    Isometry (fun x : A ↦ (WithLp.equiv 1 (Unitization 𝕜 A)).symm x) :=
  AddMonoidHomClass.isometry_of_norm
    ((WithLp.linearEquiv 1 𝕜 (Unitization 𝕜 A)).symm.comp <| Unitization.inrHom 𝕜 A)
    unitization_norm_inr

variable [IsScalarTower 𝕜 A A] [SMulCommClass 𝕜 A A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240ef7cffdec19da2e6eca3ddf1306b2808e371f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
