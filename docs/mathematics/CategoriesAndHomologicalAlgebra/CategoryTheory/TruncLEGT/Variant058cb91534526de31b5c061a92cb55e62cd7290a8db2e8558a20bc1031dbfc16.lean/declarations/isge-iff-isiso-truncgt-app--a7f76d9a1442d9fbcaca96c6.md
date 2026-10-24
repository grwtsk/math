# isGE_iff_isIso_truncGTπ_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d676903f0c35f56084dd73aaf5c39433bbb3c740",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15a89518-f0b8-0d2c-4916-f0c269fdda91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:712c41ed-1b21-1212-5cf9-2748dcade27a",
  "kind": "lemma",
  "lexical_name": "isGE_iff_isIso_truncGTπ_app",
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
  "slug": "isge-iff-isiso-truncgt-app--a7f76d9a1442d9fbcaca96c6",
  "source": {
    "blob": "d676903f0c35f56084dd73aaf5c39433bbb3c740",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f76d9a1442d9fbcaca96c679d791ba63c319eb2b3671b8f7f614ac6a0ee2bd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:712c41ed-1b21-1212-5cf9-2748dcade27a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isGE_iff_isIso_truncGTπ_app (n₀ n₁ : ℤ) (hn₁ : n₀ + 1 = n₁) (X : C) :
    t.IsGE X n₁ ↔ IsIso ((t.truncGTπ n₀).app X) := by
  rw [t.isGE_iff_isIso_truncGEπ_app n₁ X]
  exact (MorphismProperty.isomorphisms _).arrow_mk_iso_iff
    (Arrow.isoMk (Iso.refl _) ((t.truncGTIsoTruncGE _ _ hn₁).symm.app X))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d676903f0c35f56084dd73aaf5c39433bbb3c740` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
