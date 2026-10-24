# _root_.Filter.HasBasis.vitaliFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0875e0ff0ce4dc6632f4886194e337384cc1afc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c5986f6-5920-5356-4240-c7d25dd34e84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:073e2ee2-21d4-7481-a952-a66eb1e6e5de",
  "kind": "theorem",
  "lexical_name": "_root_.Filter.HasBasis.vitaliFamily",
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
  "slug": "root-filter-hasbasis-vitalifamily--fd22b9fa009aa9a7addb63c1",
  "source": {
    "blob": "e0875e0ff0ce4dc6632f4886194e337384cc1afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/VitaliFamily/Variant8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd22b9fa009aa9a7addb63c15e965396810a2c2a0d9bc211fcf303068beb934c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VitaliFamily/Variant8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:073e2ee2-21d4-7481-a952-a66eb1e6e5de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Filter.HasBasis.vitaliFamily {ι : Sort*} {p : ι → Prop} {s : ι → Set X} {x : X}
    (h : (𝓝 x).HasBasis p s) : (v.filterAt x).HasBasis p (fun i ↦ {t ∈ v.setsAt x | t ⊆ s i}) := by
  simpa only [← Set.setOf_inter_eq_sep] using h.smallSets.inf_principal _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VitaliFamily/Variant8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VitaliFamily/Variant8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0875e0ff0ce4dc6632f4886194e337384cc1afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
