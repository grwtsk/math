# RightHomologyMapData.quasiIso_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a111c7cce765e3cf1cc48ce46589b8799ac8170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95e1c9a6-583a-7bf5-4d05-9b9bf8e5e1cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:552c0ff6-c521-e5a2-3cea-b11cfec405ad",
  "kind": "lemma",
  "lexical_name": "RightHomologyMapData.quasiIso_iff",
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
  "slug": "righthomologymapdata-quasiiso-iff--90d81619f0334bd5528d18a0",
  "source": {
    "blob": "7a111c7cce765e3cf1cc48ce46589b8799ac8170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variantae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90d81619f0334bd5528d18a05b5effe85c4e7a20cb65f5d27c82e09bdb20f9ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variantae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:552c0ff6-c521-e5a2-3cea-b11cfec405ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RightHomologyMapData.quasiIso_iff {φ : S₁ ⟶ S₂} {h₁ : S₁.RightHomologyData}
    {h₂ : S₂.RightHomologyData} (γ : RightHomologyMapData φ h₁ h₂) :
    QuasiIso φ ↔ IsIso γ.φH := by
  rw [ShortComplex.quasiIso_iff, γ.homologyMap_eq]
  constructor
  · intro h
    have : IsIso (γ.φH ≫ (RightHomologyData.homologyIso h₂).inv) :=
      IsIso.of_isIso_comp_left (RightHomologyData.homologyIso h₁).hom _
    exact IsIso.of_isIso_comp_right _ (RightHomologyData.homologyIso h₂).inv
  · intro h
    infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variantae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variantae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a111c7cce765e3cf1cc48ce46589b8799ac8170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
