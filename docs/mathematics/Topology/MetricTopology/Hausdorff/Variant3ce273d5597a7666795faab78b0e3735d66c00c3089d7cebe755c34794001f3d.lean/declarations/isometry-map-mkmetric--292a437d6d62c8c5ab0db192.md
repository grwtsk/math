# isometry_map_mkMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17836ebb-b147-8426-d91a-0b772788a678",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:169e3497-d444-65f5-8fc8-48036a2e9002",
  "kind": "theorem",
  "lexical_name": "isometry_map_mkMetric",
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
  "slug": "isometry-map-mkmetric--292a437d6d62c8c5ab0db192",
  "source": {
    "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 374,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:292a437d6d62c8c5ab0db19252cd2efbd707552a690e4e5430aec3b7c0319770",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:169e3497-d444-65f5-8fc8-48036a2e9002`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isometry_map_mkMetric (m : ℝ≥0∞ → ℝ≥0∞) {f : X → Y} (hf : Isometry f)
    (H : Monotone m ∨ Surjective f) : map f (mkMetric m) = restrict (range f) (mkMetric m) := by
  rw [← isometry_comap_mkMetric _ hf H, map_comap]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c79bc8875aa7428d749bfc0e3cf2684bcee37b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
