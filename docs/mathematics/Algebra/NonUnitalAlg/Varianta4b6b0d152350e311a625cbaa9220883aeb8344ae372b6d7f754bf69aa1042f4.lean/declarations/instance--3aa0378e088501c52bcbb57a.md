# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d259f02dc13605d9e1b8cb0b5c135313252f28787ab793ac8befcbf215fd8048",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3aa0378e088501c52bcbb57a",
  "source": {
    "blob": "9e18cdd8c4c60795a25dabba3642f3abbb659134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 105,
    "path": "GRWTSK/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3aa0378e088501c52bcbb57abe5f61ec465302f94d7949773fa45f18a43ce0d0",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d259f02dc13605d9e1b8cb0b5c135313252f28787ab793ac8befcbf215fd8048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {F R A B : Type*} [Monoid R] [NonUnitalNonAssocSemiring A] [DistribMulAction R A]
    [NonUnitalNonAssocSemiring B] [DistribMulAction R B] [NonUnitalAlgHomClass F R A B] :
    CoeTC F (A →ₙₐ[R] B) :=
  ⟨toNonUnitalAlgHom⟩

end NonUnitalAlgHomClass

namespace NonUnitalAlgHom

variable {R A B C} [Monoid R]

variable [NonUnitalNonAssocSemiring A] [DistribMulAction R A]

variable [NonUnitalNonAssocSemiring B] [DistribMulAction R B]

variable [NonUnitalNonAssocSemiring C] [DistribMulAction R C]

-- Porting note: Replaced with FunLike instance
-- /-- see Note [function coercion] -/
-- instance : CoeFun (A →ₙₐ[R] B) fun _ => A → B :=
--   ⟨toFun⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e18cdd8c4c60795a25dabba3642f3abbb659134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
