# pointwiseMulSemiringAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37ca01b126afa1cc0fdea1cbb9bdffe898c75e842e36f7b098796aed8cd75782",
  "kind": "def",
  "lexical_name": "pointwiseMulSemiringAction",
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
  "slug": "pointwisemulsemiringaction--ca076b03acadfdc051534aae",
  "source": {
    "blob": "fbf200b85c96312a8a3f7d77dee0e54f4eb248bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 572,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca076b03acadfdc051534aae46b3e626adf058df7e3bad2be416f02bb6dabad2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37ca01b126afa1cc0fdea1cbb9bdffe898c75e842e36f7b098796aed8cd75782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def pointwiseMulSemiringAction : MulSemiringAction α (Submodule R A) :=
  {
    Submodule.pointwiseDistribMulAction with
    smul_mul := fun r x y => Submodule.map_mul x y <| MulSemiringAction.toAlgHom R A r
    smul_one := fun r => Submodule.map_one <| MulSemiringAction.toAlgHom R A r }
#align submodule.pointwise_mul_semiring_action Submodule.pointwiseMulSemiringAction

scoped[Pointwise] attribute [instance] Submodule.pointwiseMulSemiringAction

end

end Ring

section CommRing

variable {A : Type v} [CommSemiring A] [Algebra R A]

variable {M N : Submodule R A} {m n : A}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf200b85c96312a8a3f7d77dee0e54f4eb248bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
