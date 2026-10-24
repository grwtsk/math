# NonarchAddGroupNormClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e072d0a9e6a1df6e6e2c08573f97d6ad0e765f5b1cbcee3330af57f90f9238ab",
  "kind": "class",
  "lexical_name": "NonarchAddGroupNormClass",
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
  "slug": "nonarchaddgroupnormclass--a39be7787f4a99b8f792e5f3",
  "source": {
    "blob": "83504743801a6bc371f132d6f236f20444a6fc64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant714c23b7708622263cf6ef577b16d3bcd19bb8a96ba6476690f78f96816f3234.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a39be7787f4a99b8f792e5f3edc9735f21af975ab12e0452c6eec266a73565e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant714c23b7708622263cf6ef577b16d3bcd19bb8a96ba6476690f78f96816f3234.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e072d0a9e6a1df6e6e2c08573f97d6ad0e765f5b1cbcee3330af57f90f9238ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NonarchAddGroupNormClass (F : Type*) (α : outParam Type*) [AddGroup α] [FunLike F α ℝ] : Prop
    extends NonarchAddGroupSeminormClass F α where
  /-- If the image under the norm is zero, then the argument is zero. -/
  protected eq_zero_of_map_eq_zero (f : F) {a : α} : f a = 0 → a = 0

section NonarchAddGroupSeminormClass

variable [AddGroup E] [FunLike F E ℝ] [NonarchAddGroupSeminormClass F E] (f : F) (x y : E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant714c23b7708622263cf6ef577b16d3bcd19bb8a96ba6476690f78f96816f3234.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant714c23b7708622263cf6ef577b16d3bcd19bb8a96ba6476690f78f96816f3234.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83504743801a6bc371f132d6f236f20444a6fc64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
