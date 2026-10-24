# Nontrivial.le_infsep_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3d33e76b444f3ae2602d42b9d2f140f5797c611",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15d724f8-9d80-948b-acf3-772570196374",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed4b8ce3-26ed-f43d-2c10-90c8d9d39478",
  "kind": "theorem",
  "lexical_name": "Nontrivial.le_infsep_iff",
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
  "slug": "nontrivial-le-infsep-iff--f07265bd0dd1ce17d90c8437",
  "source": {
    "blob": "d3d33e76b444f3ae2602d42b9d2f140f5797c611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 329,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f07265bd0dd1ce17d90c8437e5a7c44a842b6b62aa7a890a46d797d86cc00f49",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed4b8ce3-26ed-f43d-2c10-90c8d9d39478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nontrivial.le_infsep_iff {d} (hs : s.Nontrivial) :
    d ≤ s.infsep ↔ ∀ x ∈ s, ∀ y ∈ s, x ≠ y → d ≤ dist x y := by
  simp_rw [infsep, ← ENNReal.ofReal_le_iff_le_toReal hs.einfsep_ne_top, le_einfsep_iff, edist_dist,
    ENNReal.ofReal_le_ofReal_iff dist_nonneg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d33e76b444f3ae2602d42b9d2f140f5797c611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
