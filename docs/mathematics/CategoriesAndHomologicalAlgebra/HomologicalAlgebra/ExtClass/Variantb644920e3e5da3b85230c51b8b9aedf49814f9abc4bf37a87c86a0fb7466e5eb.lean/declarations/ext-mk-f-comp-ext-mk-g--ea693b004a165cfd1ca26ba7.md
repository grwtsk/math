# ext_mk₀_f_comp_ext_mk₀_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4797cdd3d03e045803dbd4729c8d513dfbef36c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58f1be4f-48aa-08a7-79e0-6c84b2a5f2f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49035879-6d91-9222-44d6-3101ff675882",
  "kind": "lemma",
  "lexical_name": "ext_mk₀_f_comp_ext_mk₀_g",
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
  "slug": "ext-mk-f-comp-ext-mk-g--ea693b004a165cfd1ca26ba7",
  "source": {
    "blob": "4797cdd3d03e045803dbd4729c8d513dfbef36c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea693b004a165cfd1ca26ba728740ccf81ebd6078accc5d10479226fac1d9e11",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49035879-6d91-9222-44d6-3101ff675882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_mk₀_f_comp_ext_mk₀_g : (Ext.mk₀ S.f).comp (Ext.mk₀ S.g) (zero_add 0) = 0 := by simp

namespace ShortExact

variable {S}
variable (hS : S.ShortExact)

section

local notation "W" => HomologicalComplex.quasiIso C (ComplexShape.up ℤ)
local notation "S'" => S.map (CochainComplex.singleFunctor C 0)
local notation "hS'" => hS.map_of_exact (HomologicalComplex.single _ _ _)
local notation "K" => CochainComplex.mappingCone (ShortComplex.f S')
local notation "qis" => CochainComplex.mappingCone.descShortComplex S'
local notation "hqis" => CochainComplex.mappingCone.quasiIso_descShortComplex hS'
local notation "δ" => Triangle.mor₃ (CochainComplex.mappingCone.triangle (ShortComplex.f S'))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4797cdd3d03e045803dbd4729c8d513dfbef36c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
