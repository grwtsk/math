# Icc_eq_image_powerset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9340cb05-ca33-3f04-9b59-172a129fac93",
  "kind": "theorem",
  "lexical_name": "Icc_eq_image_powerset",
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
  "slug": "icc-eq-image-powerset--7e9bf64b7b4839b4c077b2ba",
  "source": {
    "blob": "af41fd9488b153c9f418fa32566916db140ce0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e9bf64b7b4839b4c077b2ba5af8c1a38e87cb99db49131f2c99579611a1865a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9340cb05-ca33-3f04-9b59-172a129fac93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Icc_eq_image_powerset (h : s ⊆ t) : Icc s t = (t \ s).powerset.image ((· ∪ ·) s) := by
  ext u
  simp_rw [mem_Icc, mem_image, mem_powerset]
  constructor
  · rintro ⟨hs, ht⟩
    exact ⟨u \ s, sdiff_le_sdiff_right ht, sup_sdiff_cancel_right hs⟩
  · rintro ⟨v, hv, rfl⟩
    exact ⟨le_sup_left, union_subset h <| hv.trans <| sdiff_subset _ _⟩
#align finset.Icc_eq_image_powerset Finset.Icc_eq_image_powerset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af41fd9488b153c9f418fa32566916db140ce0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
