# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:334145ddba64ea5f0664db9a22378115aa1a2b8f3dc4ba8ee7fefa4055e4e264",
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
  "slug": "instance--688bdca4dfd6dc9be0df720f",
  "source": {
    "blob": "def5f1a76b00df7be7ed85a0524e0f291a2825d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 528,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:688bdca4dfd6dc9be0df720fdc6608723ea36fd5f5dcd333a90b0425d53702eb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:334145ddba64ea5f0664db9a22378115aa1a2b8f3dc4ba8ee7fefa4055e4e264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsSeparable.of_finite (F K : Type*) [Field F] [Field K] [Algebra F K]
    [FiniteDimensional F K] [CharZero F] : IsSeparable F K :=
  have : ∀ x : K, IsIntegral F x := fun _x => Algebra.isIntegral_of_finite _ _ _
  ⟨this, fun x => (minpoly.irreducible (this x)).separable⟩
#align is_separable.of_finite IsSeparable.of_finite

section IsSeparableTower

variable (F K E : Type*) [Field F] [Field K] [Field E] [Algebra F K] [Algebra F E] [Algebra K E]
  [IsScalarTower F K E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `def5f1a76b00df7be7ed85a0524e0f291a2825d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
