# linearIndepOn_union_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d691b993206990704e02d62c3d1a5bdd41e9289",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 478,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dea6c1ee-02d2-c1be-dd8e-173876e8d110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71cc8eec-2948-d2c7-4755-4f25d3c4a301",
  "kind": "theorem",
  "lexical_name": "linearIndepOn_union_iff",
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
  "slug": "linearindepon-union-iff--e79462a655d6d8b151b5064b",
  "source": {
    "blob": "7d691b993206990704e02d62c3d1a5bdd41e9289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 478,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e79462a655d6d8b151b5064b45827701f0deaf4bddf9a43f95f9a6cd628c9fd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71cc8eec-2948-d2c7-4755-4f25d3c4a301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndepOn_union_iff {t : Set ι} (hdj : Disjoint s t) :
    LinearIndepOn R v (s ∪ t) ↔
    LinearIndepOn R v s ∧ LinearIndepOn R v t ∧ Disjoint (span R (v '' s)) (span R (v '' t)) := by
  refine ⟨fun h ↦ ⟨h.mono subset_union_left, h.mono subset_union_right, ?_⟩,
    fun h ↦ h.1.union h.2.1 h.2.2⟩
  convert! h.disjoint_span_image (s := (↑) ⁻¹' s) (t := (↑) ⁻¹' t) (hdj.preimage _) <;>
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d691b993206990704e02d62c3d1a5bdd41e9289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
