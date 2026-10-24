# _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.exists_cthickening_subset_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3ebceda-22f0-c3a8-91b1-352f5321fbf6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.exists_cthickening_subset_open",
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
  "slug": "root-grwtsk-topology-generaltopology-infedist-variantbc72ae77d59f85fd33c--10a9fe02675d3f99b89e9fdd",
  "source": {
    "blob": "58cd97ea1567cab3e19f1cd95c79eda3a9517db7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1301,
    "line": 1295,
    "path": "GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10a9fe02675d3f99b89e9fdd0a61bd8396a700db89f9e43063e82c3a373c6b10",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3ebceda-22f0-c3a8-91b1-352f5321fbf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1295–1301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.exists_cthickening_subset_open (hs : IsCompact s) (ht : IsOpen t)
    (hst : s ⊆ t) :
    ∃ δ, 0 < δ ∧ cthickening δ s ⊆ t :=
  (hst.disjoint_compl_right.exists_cthickenings hs ht.isClosed_compl).imp fun _ h =>
    ⟨h.1, disjoint_compl_right_iff_subset.1 <| h.2.mono_right <| self_subset_cthickening _⟩
#align is_compact.exists_cthickening_subset_open IsCompact.exists_cthickening_subset_open

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean#L1295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cd97ea1567cab3e19f1cd95c79eda3a9517db7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
