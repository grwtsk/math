# Preadditive.isCoseparating_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "092d930df6785b4b3e77b861d85e08e467e5de06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b263cee-2627-0414-0a24-bf304aabe385",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e8e0474-4275-e919-a177-335983c1803b",
  "kind": "theorem",
  "lexical_name": "Preadditive.isCoseparating_iff",
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
  "slug": "preadditive-iscoseparating-iff--ad128d27707da4825851fbf3",
  "source": {
    "blob": "092d930df6785b4b3e77b861d85e08e467e5de06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad128d27707da4825851fbf384c878326a65b2e72d8236d5537fbaa312fcbb51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e8e0474-4275-e919-a177-335983c1803b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Preadditive.isCoseparating_iff (P : ObjectProperty C) :
    P.IsCoseparating ↔
      ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ (G : C) (_ : P G), ∀ (h : Y ⟶ G), f ≫ h = 0) → f = 0 :=
  ⟨fun h𝒢 X Y f hf => h𝒢 _ _ (by simpa only [Limits.zero_comp] using hf), fun h𝒢 X Y f g hfg =>
    sub_eq_zero.1 <| h𝒢 _ (by simpa only [Preadditive.sub_comp, sub_eq_zero] using hfg)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092d930df6785b4b3e77b861d85e08e467e5de06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
