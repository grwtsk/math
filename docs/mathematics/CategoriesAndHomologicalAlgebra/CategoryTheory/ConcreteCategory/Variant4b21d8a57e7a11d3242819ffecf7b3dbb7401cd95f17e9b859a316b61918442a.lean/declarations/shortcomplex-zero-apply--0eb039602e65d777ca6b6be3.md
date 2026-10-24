# ShortComplex.zero_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "416724a65e891a4aaf2f7ff6129da87e5b6f42bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c292c0d1-7d52-bb81-5d05-d95f41c3e35e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc8de244-73a0-6119-739d-f6f6ea38df2e",
  "kind": "lemma",
  "lexical_name": "ShortComplex.zero_apply",
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
  "slug": "shortcomplex-zero-apply--0eb039602e65d777ca6b6be3",
  "source": {
    "blob": "416724a65e891a4aaf2f7ff6129da87e5b6f42bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eb039602e65d777ca6b6be34205f0368da7d75529fb6c09877844ef4e060fab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8de244-73a0-6119-739d-f6f6ea38df2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ShortComplex.zero_apply
    [Limits.HasZeroMorphisms C] [(forget₂ C Ab).PreservesZeroMorphisms]
    (S : ShortComplex C) (x : (forget₂ C Ab).obj S.X₁) :
    ((forget₂ C Ab).map S.g) (((forget₂ C Ab).map S.f) x) = 0 := by
  rw [← ConcreteCategory.comp_apply, ← Functor.map_comp, S.zero, Functor.map_zero]
  rfl

section preadditive

variable [Preadditive C] [(forget₂ C Ab).Additive] [(forget₂ C Ab).PreservesHomology]
  (S : ShortComplex C)

section
variable [HasZeroObject C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416724a65e891a4aaf2f7ff6129da87e5b6f42bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
