# circumradius_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a236861-2f80-7f46-08b0-5967dba39f22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b51bc2d-3a3e-bd27-080f-06efec9d7a23",
  "kind": "theorem",
  "lexical_name": "circumradius_reindex",
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
  "slug": "circumradius-reindex--6320281fe719ca20d2058a18",
  "source": {
    "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 411,
    "path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6320281fe719ca20d2058a186eb3f96ff451b99cbc810989bf6e01f405bbfb43",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b51bc2d-3a3e-bd27-080f-06efec9d7a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circumradius_reindex {m n : ℕ} (s : Simplex ℝ P m) (e : Fin (m + 1) ≃ Fin (n + 1)) :
    (s.reindex e).circumradius = s.circumradius := by simp_rw [circumradius, circumsphere_reindex]
#align affine.simplex.circumradius_reindex Affine.Simplex.circumradius_reindex

attribute [local instance] AffineSubspace.toAddTorsor

/-- The orthogonal projection of a point `p` onto the hyperplane spanned by the simplex's points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
