# dist_birkhoffSum_apply_birkhoffSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76fcafd6db305e5e8069c11c3290065d78fd1e37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37bd99f0-7513-2f7f-acaa-744eba357970",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6325a2d7-7662-4b8a-2e59-22bef2b2b1eb",
  "kind": "theorem",
  "lexical_name": "dist_birkhoffSum_apply_birkhoffSum",
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
  "slug": "dist-birkhoffsum-apply-birkhoffsum--b548e86bea309c097029c99a",
  "source": {
    "blob": "76fcafd6db305e5e8069c11c3290065d78fd1e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/NormedSpace/Variant646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b548e86bea309c097029c99a60bb44b03844e044eed7f0e40165257272656de7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NormedSpace/Variant646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6325a2d7-7662-4b8a-2e59-22bef2b2b1eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_birkhoffSum_apply_birkhoffSum (f : α → α) (g : α → E) (n : ℕ) (x : α) :
    dist (birkhoffSum f g n (f x)) (birkhoffSum f g n x) = dist (g (f^[n] x)) (g x) := by
  simp only [dist_eq_norm, birkhoffSum_apply_sub_birkhoffSum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NormedSpace/Variant646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NormedSpace/Variant646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76fcafd6db305e5e8069c11c3290065d78fd1e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
