# instSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36129786e630fd2d0146e3ab32b50e08d240f41a2bf529dd32fdbac2367b9eaf",
  "kind": "instance",
  "lexical_name": "instSemiring",
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
  "slug": "instsemiring--ffa39dc8cd55fd0a4fa8d91f",
  "source": {
    "blob": "120c75ece685498e2840d81bc5fb78fc8323eaac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffa39dc8cd55fd0a4fa8d91f588741001acd74b3b6a3b53a89132fd50876e75e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36129786e630fd2d0146e3ab32b50e08d240f41a2bf529dd32fdbac2367b9eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemiring : Semiring (Module.End R M) where
  __ := AddMonoidWithOne.unary
  __ := instMonoid
  __ := addCommMonoid
  mul_zero := comp_zero
  zero_mul := zero_comp
  left_distrib := fun _ _ _ ↦ comp_add _ _ _
  right_distrib := fun _ _ _ ↦ add_comp _ _ _
  natCast := fun n ↦ n • (1 : M →ₗ[R] M)
  natCast_zero := zero_smul ℕ (1 : M →ₗ[R] M)
  natCast_succ := fun n ↦ AddMonoid.nsmul_succ n (1 : M →ₗ[R] M)

/-- See also `Module.End.natCast_def`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `120c75ece685498e2840d81bc5fb78fc8323eaac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
