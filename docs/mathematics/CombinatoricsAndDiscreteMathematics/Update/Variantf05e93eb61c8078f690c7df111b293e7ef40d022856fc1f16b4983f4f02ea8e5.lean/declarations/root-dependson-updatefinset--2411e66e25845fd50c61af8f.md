# _root_.DependsOn.updateFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7cb268bc23a4c270b99eea8409f41cc0f6c76ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba22c1e9-62ae-9c6d-c2ca-19c8fa0dbb46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb28554f-b2bd-b61b-c907-1cef068ecdc0",
  "kind": "theorem",
  "lexical_name": "_root_.DependsOn.updateFinset",
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
  "slug": "root-dependson-updatefinset--2411e66e25845fd50c61af8f",
  "source": {
    "blob": "f7cb268bc23a4c270b99eea8409f41cc0f6c76ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2411e66e25845fd50c61af8fc6fa29ebbcd7ec75eb3907d6be2d1cfea8a5b614",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb28554f-b2bd-b61b-c907-1cef068ecdc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.DependsOn.updateFinset {α : Type*} {f : (Π i, π i) → α} {s : Set ι}
    (hf : DependsOn f s) {t : Finset ι} (y : Π i : t, π i) :
    DependsOn (fun x ↦ f (updateFinset x t y)) (s \ t) := by
  refine fun x₁ x₂ h ↦ hf (fun i hi ↦ ?_)
  simp only [Function.updateFinset]
  split_ifs; · rfl
  simp_all

/-- If one replaces the variable indexed by `i`, then `f` no longer depends on
this variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cb268bc23a4c270b99eea8409f41cc0f6c76ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
