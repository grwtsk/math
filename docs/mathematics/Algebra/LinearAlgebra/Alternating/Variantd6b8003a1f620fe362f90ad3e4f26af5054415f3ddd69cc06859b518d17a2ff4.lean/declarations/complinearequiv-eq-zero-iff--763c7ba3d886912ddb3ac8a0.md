# compLinearEquiv_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3855ba83-e60a-d4f8-2b66-09de56d88e9e",
  "kind": "theorem",
  "lexical_name": "compLinearEquiv_eq_zero_iff",
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
  "slug": "complinearequiv-eq-zero-iff--763c7ba3d886912ddb3ac8a0",
  "source": {
    "blob": "c3f2c21f84302f4bbaaf13a036c17f479a8a94cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 650,
    "path": "GRWTSK/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:763c7ba3d886912ddb3ac8a0587ac361a84f89553fdb7d525b64e4a87ae3a1a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3855ba83-e60a-d4f8-2b66-09de56d88e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compLinearEquiv_eq_zero_iff (f : AlternatingMap R M N ι) (g : M₂ ≃ₗ[R] M) :
    f.compLinearMap (g : M₂ →ₗ[R] M) = 0 ↔ f = 0 :=
  (domLCongr R N ι ℕ g.symm).map_eq_zero_iff
#align alternating_map.comp_linear_equiv_eq_zero_iff AlternatingMap.compLinearEquiv_eq_zero_iff

variable (f f' : AlternatingMap R M N ι)

variable (g g₂ : AlternatingMap R M N' ι)

variable (g' : AlternatingMap R M' N' ι)

variable (v : ι → M) (v' : ι → M')

open Function

/-!
### Other lemmas from `MultilinearMap`
-/


section

open BigOperators

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f2c21f84302f4bbaaf13a036c17f479a8a94cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
