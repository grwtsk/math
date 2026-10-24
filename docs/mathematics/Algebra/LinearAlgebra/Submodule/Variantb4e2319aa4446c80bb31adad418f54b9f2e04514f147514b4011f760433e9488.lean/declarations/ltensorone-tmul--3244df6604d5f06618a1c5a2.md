# lTensorOne'_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2a763f0-63ce-0ef0-724b-64fe5ceba5cb",
  "kind": "theorem",
  "lexical_name": "lTensorOne'_tmul",
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
  "slug": "ltensorone-tmul--3244df6604d5f06618a1c5a2",
  "source": {
    "blob": "2cb547eeef061fc233d7f4887f841336d9e93638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3244df6604d5f06618a1c5a290eb9e78fc9556e0d19f99d310d82dbb816fcbd0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2a763f0-63ce-0ef0-724b-64fe5ceba5cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lTensorOne'_tmul (y : R) (n : N) :
    N.lTensorOne' (algebraMap R _ y ⊗ₜ[R] n) = y • n := Subtype.val_injective <| by
  simp_rw [lTensorOne', LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
    LinearEquiv.coe_ofEq_apply, LinearMap.codRestrict_apply, SetLike.val_smul, Algebra.smul_def]
  exact mulMap_tmul _ N _ _

variable {N} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cb547eeef061fc233d7f4887f841336d9e93638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
