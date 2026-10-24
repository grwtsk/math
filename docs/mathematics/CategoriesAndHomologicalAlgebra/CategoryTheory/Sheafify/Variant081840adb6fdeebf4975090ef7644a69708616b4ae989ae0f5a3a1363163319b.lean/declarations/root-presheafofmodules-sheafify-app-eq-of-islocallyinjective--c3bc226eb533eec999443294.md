# _root_.PresheafOfModules.Sheafify.app_eq_of_isLocallyInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "060af8b81f87c9a911eff19cabd08a88feb3835c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da33cbd6-bede-1428-02a1-baf43db42c1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cef5529-5473-11db-a7cb-33e73ebc8272",
  "kind": "lemma",
  "lexical_name": "_root_.PresheafOfModules.Sheafify.app_eq_of_isLocallyInjective",
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
  "slug": "root-presheafofmodules-sheafify-app-eq-of-islocallyinjective--c3bc226eb533eec999443294",
  "source": {
    "blob": "060af8b81f87c9a911eff19cabd08a88feb3835c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3bc226eb533eec99944329440aa6ab4130ba365a6d3ad344c571b124ebd07a0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cef5529-5473-11db-a7cb-33e73ebc8272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.PresheafOfModules.Sheafify.app_eq_of_isLocallyInjective
    {Y : C} (r₀ r₀' : R₀.obj (Opposite.op Y))
    (m₀ m₀' : M₀.obj (Opposite.op Y))
    (hr₀ : α.app _ r₀ = α.app _ r₀')
    (hm₀ : φ.app _ m₀ = φ.app _ m₀') :
    φ.app _ (r₀ • m₀) = φ.app _ (r₀' • m₀') := by
  apply hA _ (Presheaf.equalizerSieve r₀ r₀' ⊓
      Presheaf.equalizerSieve (F := M₀.presheaf) m₀ m₀')
  · apply J.intersection_covering
    · exact Presheaf.equalizerSieve_mem J α _ _ hr₀
    · exact Presheaf.equalizerSieve_mem J φ _ _ hm₀
  · intro Z g hg
    rw [← NatTrans.naturality_apply (D := Ab), ← NatTrans.naturality_apply (D := Ab)]
    erw [M₀.map_smul, M₀.map_smul, hg.1, hg.2]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `060af8b81f87c9a911eff19cabd08a88feb3835c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
