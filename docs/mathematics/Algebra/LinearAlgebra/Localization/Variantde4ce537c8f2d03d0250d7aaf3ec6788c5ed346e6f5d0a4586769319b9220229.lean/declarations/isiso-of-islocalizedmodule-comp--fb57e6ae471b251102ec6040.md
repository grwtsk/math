# isIso_of_isLocalizedModule_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b38dff627619471bb0002cd0d17ab94207518bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:951760e1-c5c3-ebe4-8d0f-09a2c8e7238e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4913e956-c0c7-d1d4-8328-8c19dac0c796",
  "kind": "lemma",
  "lexical_name": "isIso_of_isLocalizedModule_comp",
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
  "slug": "isiso-of-islocalizedmodule-comp--fb57e6ae471b251102ec6040",
  "source": {
    "blob": "8b38dff627619471bb0002cd0d17ab94207518bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variantde4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb57e6ae471b251102ec6040901314bdad032860102708c426a20588573be30a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variantde4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4913e956-c0c7-d1d4-8328-8c19dac0c796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_of_isLocalizedModule_comp {S : Submonoid R} {M₁ M₂ M₃ : ModuleCat R} {f₁ : M₁ ⟶ M₂}
    {f₂ : M₂ ⟶ M₃} (h₁ : IsLocalizedModule S f₁.hom) (h₂ : IsLocalizedModule S (f₁ ≫ f₂).hom) :
    IsIso f₂ := by
  have : Function.Bijective f₂.hom := by
    rw [← IsLocalizedModule.linearEquiv_of_isLocalizedModule_comp S f₁.hom f₂.hom]
    exact (IsLocalizedModule.linearEquiv ..).bijective
  simpa [ConcreteCategory.isIso_iff_bijective]

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variantde4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variantde4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b38dff627619471bb0002cd0d17ab94207518bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
