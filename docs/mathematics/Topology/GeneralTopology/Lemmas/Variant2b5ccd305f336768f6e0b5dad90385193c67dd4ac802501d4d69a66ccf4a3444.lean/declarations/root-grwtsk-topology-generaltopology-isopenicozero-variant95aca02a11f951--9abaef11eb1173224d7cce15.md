# _root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.ContinuousOn.ofReal_map_toNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c964d83a-f59e-148d-b11c-4c723e1eacda",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.ContinuousOn.ofReal_map_toNNReal",
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
  "slug": "root-grwtsk-topology-generaltopology-isopenicozero-variant95aca02a11f951--9abaef11eb1173224d7cce15",
  "source": {
    "blob": "b9907abb5bd3b220b3d1558e2bb9ed9ffc016ae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant2b5ccd305f336768f6e0b5dad90385193c67dd4ac802501d4d69a66ccf4a3444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9abaef11eb1173224d7cce153f38ad8e7f22c384b4ef01f3176169bcf82ac66e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant2b5ccd305f336768f6e0b5dad90385193c67dd4ac802501d4d69a66ccf4a3444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c964d83a-f59e-148d-b11c-4c723e1eacda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.ContinuousOn.ofReal_map_toNNReal {f : ℝ≥0 → ℝ≥0} {s : Set ℝ} {t : Set ℝ≥0}
    (hf : ContinuousOn f t) (h : Set.MapsTo Real.toNNReal s t) :
    ContinuousOn (fun x ↦ f x.toNNReal : ℝ → ℝ) s :=
  continuous_subtype_val.comp_continuousOn <| hf.comp continuous_real_toNNReal.continuousOn h

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant2b5ccd305f336768f6e0b5dad90385193c67dd4ac802501d4d69a66ccf4a3444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant2b5ccd305f336768f6e0b5dad90385193c67dd4ac802501d4d69a66ccf4a3444.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9907abb5bd3b220b3d1558e2bb9ed9ffc016ae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
