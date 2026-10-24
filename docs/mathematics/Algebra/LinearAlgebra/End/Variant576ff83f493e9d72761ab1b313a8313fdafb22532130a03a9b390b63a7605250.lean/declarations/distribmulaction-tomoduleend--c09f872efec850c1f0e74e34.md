# DistribMulAction.toModuleEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97486b6e311b05dabc92589130ea053f303684c39b7726b098582890e855a986",
  "kind": "def",
  "lexical_name": "DistribMulAction.toModuleEnd",
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
  "slug": "distribmulaction-tomoduleend--c09f872efec850c1f0e74e34",
  "source": {
    "blob": "800074deb0179bd460abc3fe33a456aadf83873b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 258,
    "path": "GRWTSK/Algebra/LinearAlgebra/End/Variant576ff83f493e9d72761ab1b313a8313fdafb22532130a03a9b390b63a7605250.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c09f872efec850c1f0e74e34224f38c1b1a38a1e93d187c67df0bae34244c163",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/End/Variant576ff83f493e9d72761ab1b313a8313fdafb22532130a03a9b390b63a7605250.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97486b6e311b05dabc92589130ea053f303684c39b7726b098582890e855a986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DistribMulAction.toModuleEnd [DistribMulAction S M] [SMulCommClass S R M] :
    S →* Module.End R M where
  toFun := DistribSMul.toLinearMap R M
  map_one' := LinearMap.ext <| one_smul _
  map_mul' _ _ := LinearMap.ext <| mul_smul _ _

end

section Module

variable (R M) [Semiring R] [AddCommMonoid M] [Module R M]
variable [Semiring S] [Module S M] [SMulCommClass S R M]

/-- Each element of the semiring defines a module endomorphism.

This is a stronger version of `DistribMulAction.toModuleEnd`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/End/Variant576ff83f493e9d72761ab1b313a8313fdafb22532130a03a9b390b63a7605250.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/End/Variant576ff83f493e9d72761ab1b313a8313fdafb22532130a03a9b390b63a7605250.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800074deb0179bd460abc3fe33a456aadf83873b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
