# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:734ee6cfd6da806989997938c079e5b6a10b829e2bf44ff2655689642b6d5344",
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
  "slug": "instance--6657e965bb71e3ba9eed4992",
  "source": {
    "blob": "d44c2de411a4e51c81c49f7fe8fe061080a827b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6657e965bb71e3ba9eed4992329eec58eb1b7d48297d6b2179b12673ceb3dda5",
  "verification": {
    "reference": "docs/verification/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:734ee6cfd6da806989997938c079e5b6a10b829e2bf44ff2655689642b6d5344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LinearOrderedCommGroupWithZero (MonoidHom.mrange v) where
  __ : CommGroupWithZero (MonoidHom.mrange v) := inferInstance
  __ : LinearOrder (MonoidHom.mrange v) := inferInstance
  bot := 0
  bot_le a := show (0 : Γ₀) ≤ _ from zero_le'
  zero_le_one := Subtype.coe_le_coe.mp zero_le_one
  mul_le_mul_left := by
    simp only [Subtype.forall, MonoidHom.mem_mrange, forall_exists_index, Submonoid.mk_mul_mk,
      Subtype.mk_le_mk, forall_apply_eq_imp_iff]
    intro a b hab c
    exact mul_le_mul_left' hab (v c)

namespace Valuation.Integers

open scoped Function in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d44c2de411a4e51c81c49f7fe8fe061080a827b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
