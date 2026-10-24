# _root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.tendsto_real_toNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fe3bfc6-cc31-546b-0b79-6078389df338",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.tendsto_real_toNNReal",
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
  "slug": "root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--c6a008e6a1dc6f60aab503dc",
  "source": {
    "blob": "012e5a662d82bdd8ba92625640ae63c8e257ffb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a008e6a1dc6f60aab503dcae1452671d7ce15be344118b7f5584091bc3c30f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fe3bfc6-cc31-546b-0b79-6078389df338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.tendsto_real_toNNReal {f : Filter α} {m : α → ℝ} {x : ℝ} (h : Tendsto m f (𝓝 x)) :
    Tendsto (fun a => Real.toNNReal (m a)) f (𝓝 (Real.toNNReal x)) :=
  (continuous_real_toNNReal.tendsto _).comp h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `012e5a662d82bdd8ba92625640ae63c8e257ffb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
