# prodMapRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36af1e58cdd428f51fe0416dcf1d2db852995894267f307fdd8a9daf19a28739",
  "kind": "def",
  "lexical_name": "prodMapRingHom",
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
  "slug": "prodmapringhom--12409df72b69a062a329669c",
  "source": {
    "blob": "41502994584fc64e692d2cd94c36bff7280903f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 382,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12409df72b69a062a329669cfa92b0c1f0c2ed3b32a981ed3b8edb5227df6d02",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36af1e58cdd428f51fe0416dcf1d2db852995894267f307fdd8a9daf19a28739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodMapRingHom : (M →ₗ[R] M) × (M₂ →ₗ[R] M₂) →+* M × M₂ →ₗ[R] M × M₂
    where
  toFun f := prodMap f.1 f.2
  map_one' := prodMap_one
  map_zero' := rfl
  map_add' _ _ := rfl
  map_mul' _ _ := rfl
#align linear_map.prod_map_ring_hom LinearMap.prodMapRingHom

variable {R M M₂ M₃ M₄}

section map_mul

variable {A : Type*} [NonUnitalNonAssocSemiring A] [Module R A]

variable {B : Type*} [NonUnitalNonAssocSemiring B] [Module R B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41502994584fc64e692d2cd94c36bff7280903f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
