# IsLocallyFaithful.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a187c2dd0bbb7312886cc694d530d99a50b0ba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f2941ea9e0c84e19d6d4a85d0137f8c6dd7a3dfb2fe36e00b95b8318b6f6cea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24810918-35d2-d7ee-7bab-d9aee5deb949",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bebf9f52-944c-9162-a467-ba96b136ff03",
  "kind": "theorem",
  "lexical_name": "IsLocallyFaithful.ext",
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
  "slug": "islocallyfaithful-ext--69d6cebb7312ec4bd9d7ffd1",
  "source": {
    "blob": "2a187c2dd0bbb7312886cc694d530d99a50b0ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant0f2941ea9e0c84e19d6d4a85d0137f8c6dd7a3dfb2fe36e00b95b8318b6f6cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d6cebb7312ec4bd9d7ffd1309f0da331c75a07fcc90398ec54f3e4686c11ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant0f2941ea9e0c84e19d6d4a85d0137f8c6dd7a3dfb2fe36e00b95b8318b6f6cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebf9f52-944c-9162-a467-ba96b136ff03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocallyFaithful.ext [G.IsLocallyFaithful K] (ℱ : Sheaf K Type*)
    {X Y : C} (i₁ i₂ : X ⟶ Y) (e : G.map i₁ = G.map i₂)
    {s t : ℱ.obj.obj (op (G.obj X))}
    (h : ∀ ⦃Z : C⦄ (j : Z ⟶ X), j ≫ i₁ = j ≫ i₂ →
      ℱ.1.map (G.map j).op s = ℱ.1.map (G.map j).op t) : s = t := by
  apply (((isSheaf_iff_isSheaf_of_type _ _).1 ℱ.property) _
    (G.functorPushforward_equalizer_mem K i₁ i₂ e)).isSeparatedFor.ext
  rintro Z _ ⟨W, iWX, iZW, hiWX, rfl⟩
  simp [h iWX hiWX]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant0f2941ea9e0c84e19d6d4a85d0137f8c6dd7a3dfb2fe36e00b95b8318b6f6cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant0f2941ea9e0c84e19d6d4a85d0137f8c6dd7a3dfb2fe36e00b95b8318b6f6cea.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a187c2dd0bbb7312886cc694d530d99a50b0ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
