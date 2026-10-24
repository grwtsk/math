# subgroup_units_cyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dcbd6402275cddffbc7bad2401d97c5f7f414a384ca1c0fd4d1bbf67a874a3c",
  "kind": "instance",
  "lexical_name": "subgroup_units_cyclic",
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
  "slug": "subgroup-units-cyclic--f10605773182cb73e190ec58",
  "source": {
    "blob": "dab793a51b446a47f1e20f77b103db770df84a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f10605773182cb73e190ec58e7e6fd994df1830c98121e5811cc5c2d6db8e4cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dcbd6402275cddffbc7bad2401d97c5f7f414a384ca1c0fd4d1bbf67a874a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subgroup_units_cyclic : IsCyclic S := by
  -- porting note: the original proof used a `coe`, but I was not able to get it to work.
  apply isCyclic_of_subgroup_isDomain (R := R) (G := S) _ _
  · exact MonoidHom.mk (OneHom.mk (fun s => ↑s.val) rfl) (by simp)
  · exact Units.ext.comp Subtype.val_injective
#align subgroup_units_cyclic subgroup_units_cyclic

end

section EuclideanDivision

namespace Polynomial

open Polynomial

variable (K : Type) [Field K] [Algebra R[X] K] [IsFractionRing R[X] K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dab793a51b446a47f1e20f77b103db770df84a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
