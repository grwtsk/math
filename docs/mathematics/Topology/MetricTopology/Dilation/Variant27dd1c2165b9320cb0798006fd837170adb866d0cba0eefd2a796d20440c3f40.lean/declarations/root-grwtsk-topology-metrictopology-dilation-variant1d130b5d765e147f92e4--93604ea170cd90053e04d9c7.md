# _root_.GRWTSK.Topology.MetricTopology.Dilation.Variant1d130b5d765e147f92e4cf74fcc029314984e3a5f585d4b4cec81c6129ca7d4d.Isometry.toDilation_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77ae1f04-277d-f81a-2154-a9acac24b2d2",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.Dilation.Variant1d130b5d765e147f92e4cf74fcc029314984e3a5f585d4b4cec81c6129ca7d4d.Isometry.toDilation_ratio",
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
  "slug": "root-grwtsk-topology-metrictopology-dilation-variant1d130b5d765e147f92e4--93604ea170cd90053e04d9c7",
  "source": {
    "blob": "6c7294819de1d2c7cb712a292bfe12befe248109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 258,
    "path": "GRWTSK/Topology/MetricTopology/Dilation/Variant27dd1c2165b9320cb0798006fd837170adb866d0cba0eefd2a796d20440c3f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93604ea170cd90053e04d9c7e0181dc1e471371ff5e4878710b5beab11b62fd4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dilation/Variant27dd1c2165b9320cb0798006fd837170adb866d0cba0eefd2a796d20440c3f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77ae1f04-277d-f81a-2154-a9acac24b2d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.MetricTopology.Dilation.Variant1d130b5d765e147f92e4cf74fcc029314984e3a5f585d4b4cec81c6129ca7d4d.Isometry.toDilation_ratio {f : α → β} {hf : Isometry f} : ratio hf.toDilation = 1 := by
  by_cases! h : ∀ x y : α, edist x y = 0 ∨ edist x y = ⊤
  · exact ratio_of_trivial hf.toDilation h
  · obtain ⟨x, y, h₁, h₂⟩ := h
    exact ratio_unique h₁ h₂ (by simp [hf x y]) |>.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dilation/Variant27dd1c2165b9320cb0798006fd837170adb866d0cba0eefd2a796d20440c3f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dilation/Variant27dd1c2165b9320cb0798006fd837170adb866d0cba0eefd2a796d20440c3f40.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c7294819de1d2c7cb712a292bfe12befe248109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
