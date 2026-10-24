# End_algebraMap_isUnit_inv_apply_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:840d0517-ed6a-be89-78f6-31f2f70cda1b",
  "kind": "theorem",
  "lexical_name": "End_algebraMap_isUnit_inv_apply_eq_iff",
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
  "slug": "end-algebramap-isunit-inv-apply-eq-iff--4c99a17d019d5e24c20599bb",
  "source": {
    "blob": "89828f7f56ef1ea433756899bd799939d2f40cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 634,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfa5b3ae7fdd7e8d49e665c67017eb05c578325788992306d34c97a33ed5628fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c99a17d019d5e24c20599bb3ad84b7cd3715be2423bfae6bc2b593bdaac4ff2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfa5b3ae7fdd7e8d49e665c67017eb05c578325788992306d34c97a33ed5628fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:840d0517-ed6a-be89-78f6-31f2f70cda1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem End_algebraMap_isUnit_inv_apply_eq_iff {x : R}
    (h : IsUnit (algebraMap R (Module.End S M) x)) (m m' : M) :
    (↑(h.unit⁻¹) : Module.End S M) m = m' ↔ m = x • m' :=
  { mp := fun H => ((congr_arg h.unit H).symm.trans (End_isUnit_apply_inv_apply_of_isUnit h _)).symm
    mpr := fun H =>
      H.symm ▸ by
        apply_fun ⇑h.unit.val using ((Module.End_isUnit_iff _).mp h).injective
        erw [End_isUnit_apply_inv_apply_of_isUnit]
        rfl }
#align module.End_algebra_map_is_unit_inv_apply_eq_iff Module.End_algebraMap_isUnit_inv_apply_eq_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfa5b3ae7fdd7e8d49e665c67017eb05c578325788992306d34c97a33ed5628fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfa5b3ae7fdd7e8d49e665c67017eb05c578325788992306d34c97a33ed5628fa.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89828f7f56ef1ea433756899bd799939d2f40cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
