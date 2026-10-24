# nonUnitalAlgHom_comp_convMul_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c48f6075-5d50-ec74-f742-0f59c47cd9f8",
  "kind": "lemma",
  "lexical_name": "nonUnitalAlgHom_comp_convMul_distrib",
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
  "slug": "nonunitalalghom-comp-convmul-distrib--971a3158834aebd538013529",
  "source": {
    "blob": "e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:971a3158834aebd538013529378ef8d82090dcedbaba3ade47fc3fbcc0f565e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c48f6075-5d50-ec74-f742-0f59c47cd9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonUnitalAlgHom_comp_convMul_distrib
    [NonUnitalNonAssocSemiring B] [Module R B] [SMulCommClass R B B] [IsScalarTower R B B]
    (h : A →ₙₐ[R] B) (f g : WithConv (C →ₗ[R] A)) :
    (h : A →ₗ[R] B).comp (f * g).ofConv =
      (toConv ((h : A →ₗ[R] B).comp f.ofConv) * toConv ((h : A →ₗ[R] B).comp g.ofConv)).ofConv := by
  simp [convMul_def, map_comp, ← comp_assoc, NonUnitalAlgHom.comp_mul']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
