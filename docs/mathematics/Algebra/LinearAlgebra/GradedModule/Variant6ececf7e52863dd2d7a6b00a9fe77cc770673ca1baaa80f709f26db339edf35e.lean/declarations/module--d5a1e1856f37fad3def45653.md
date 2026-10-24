# module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:457dd788c9aeb037d74f838701ed1d17d8a7e38f7b3fd99c277052d6fcfc84d5",
  "kind": "instance",
  "lexical_name": "module",
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
  "slug": "module--d5a1e1856f37fad3def45653",
  "source": {
    "blob": "91e946d82f5e896cbeab689250bb5e52a32bae6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5a1e1856f37fad3def456539d5d12ee748687e3f2be2b5b7a1fcf2cfb2c2494",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:457dd788c9aeb037d74f838701ed1d17d8a7e38f7b3fd99c277052d6fcfc84d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance module [DecidableEq ιA] [DecidableEq ιB] [GSemiring A] [Gmodule A M] :
    Module (⨁ i, A i) (⨁ i, M i) where
  smul := (· • ·)
  one_smul := one_smul' _ _
  mul_smul := mul_smul' _ _
  smul_add r := (smulAddMonoidHom A M r).map_add
  smul_zero r := (smulAddMonoidHom A M r).map_zero
  add_smul r s x := by simp only [smul_def, map_add, AddMonoidHom.add_apply]
  zero_smul x := by simp only [smul_def, map_zero, AddMonoidHom.zero_apply]

end

end Gmodule

end DirectSum

end

open DirectSum

variable {ιA ιM R A M σ σ' : Type*}
variable [AddMonoid ιA] [AddAction ιA ιM] [CommSemiring R] [Semiring A] [Algebra R A]
variable (𝓐 : ιA → σ') [SetLike σ' A]
variable (𝓜 : ιM → σ)

namespace SetLike

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e946d82f5e896cbeab689250bb5e52a32bae6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
