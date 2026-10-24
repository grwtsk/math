# equivariantOfLinearOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d40884353a1d16dd3f902064002224790f9aabc60b5a213b8b2963bd42e5270",
  "kind": "def",
  "lexical_name": "equivariantOfLinearOfComm",
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
  "slug": "equivariantoflinearofcomm--cf6554d7d081f6ffcf99d1cf",
  "source": {
    "blob": "830345ad09252f2061e2457c2c26d77c91d4277d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1047,
    "line": 1031,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf6554d7d081f6ffcf99d1cf5a8cdecb555cced6a7773beb8aac1265775f0f59",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d40884353a1d16dd3f902064002224790f9aabc60b5a213b8b2963bd42e5270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1031–1047.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivariantOfLinearOfComm : V →ₗ[MonoidAlgebra k G] W where
  toFun := f
  map_add' v v' := by simp
  map_smul' c v := by
    -- Porting note: `dsimp` is required for beta reduction.
    dsimp only []
    -- Porting note: Was `apply`.
    refine Finsupp.induction c ?_ ?_
    · simp
    · intro g r c' _nm _nz w
      dsimp at *
      simp only [add_smul, f.map_add, w, add_left_inj, single_eq_algebraMap_mul_of, ← smul_smul]
      erw [algebraMap_smul (MonoidAlgebra k G) r, algebraMap_smul (MonoidAlgebra k G) r, f.map_smul,
        h g v, of_apply]
#align monoid_algebra.equivariant_of_linear_of_comm MonoidAlgebra.equivariantOfLinearOfComm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean#L1031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830345ad09252f2061e2457c2c26d77c91d4277d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
