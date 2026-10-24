# PseudoEMetricSpace.ofEDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7c6f27bd135b00fd69b705bf264840b7ca3ecba576f67f5f5783f3dc5e6d3bd",
  "kind": "abbrev",
  "lexical_name": "PseudoEMetricSpace.ofEDist",
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
  "slug": "pseudoemetricspace-ofedist--fd905c48005a57b46792f7cb",
  "source": {
    "blob": "9e1adc511024766f5e38859b9c7daf25e454da0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 263,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd905c48005a57b46792f7cb47ee5307f60308b6d4698965b674495560ccb31b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7c6f27bd135b00fd69b705bf264840b7ca3ecba576f67f5f5783f3dc5e6d3bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev PseudoEMetricSpace.ofEDist
    {α : Type u} (edist : α → α → ℝ≥0∞) (edist_self : ∀ x : α, edist x x = 0)
    (edist_comm : ∀ x y : α, edist x y = edist y x) (edist_triangle : ∀ x y z :
    α, edist x z ≤ edist x y + edist y z) : PseudoEMetricSpace α where
  edist := edist
  edist_self := edist_self
  edist_comm := edist_comm
  edist_triangle := edist_triangle
  toUniformSpace := uniformSpaceOfEDist edist edist_self edist_comm edist_triangle
  uniformity_edist := by rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1adc511024766f5e38859b9c7daf25e454da0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
