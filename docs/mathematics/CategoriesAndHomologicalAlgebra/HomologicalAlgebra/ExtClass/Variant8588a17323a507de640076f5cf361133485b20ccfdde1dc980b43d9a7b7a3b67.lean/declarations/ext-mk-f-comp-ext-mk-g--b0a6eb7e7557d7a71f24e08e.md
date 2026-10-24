# ext_mk₀_f_comp_ext_mk₀_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c8c3e96-f387-a5f0-3c8a-a3d5b7c1d8bb",
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
  "slug": "ext-mk-f-comp-ext-mk-g--b0a6eb7e7557d7a71f24e08e",
  "source": {
    "blob": "008ec8e922f28fbf8adf5f6c0c92d17b2fbe2ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0a6eb7e7557d7a71f24e08e2cf29fb5509be8db7296c27d3585ad217ebda3c9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c8c3e96-f387-a5f0-3c8a-a3d5b7c1d8bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–58.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008ec8e922f28fbf8adf5f6c0c92d17b2fbe2ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
