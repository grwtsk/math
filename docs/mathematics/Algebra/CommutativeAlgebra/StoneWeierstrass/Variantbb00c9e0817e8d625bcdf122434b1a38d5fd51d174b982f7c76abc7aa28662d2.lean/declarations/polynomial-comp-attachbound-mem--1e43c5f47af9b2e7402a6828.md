# polynomial_comp_attachBound_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e888e2b-5c97-92a2-17b4-0e4637c2eb47",
  "kind": "theorem",
  "lexical_name": "polynomial_comp_attachBound_mem",
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
  "slug": "polynomial-comp-attachbound-mem--1e43c5f47af9b2e7402a6828",
  "source": {
    "blob": "2423b858edcaa7a4364c27ac2b4d5ea335513cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 91,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e43c5f47af9b2e7402a682880b2eaca04dc3380b3c864aee931d76f9b8218d1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e888e2b-5c97-92a2-17b4-0e4637c2eb47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_comp_attachBound_mem (A : Subalgebra ℝ C(X, ℝ)) (f : A) (g : ℝ[X]) :
    (g.toContinuousMapOn (Set.Icc (-‖f‖) ‖f‖)).comp (f : C(X, ℝ)).attachBound ∈ A := by
  rw [polynomial_comp_attachBound]
  apply SetLike.coe_mem
#align continuous_map.polynomial_comp_attach_bound_mem ContinuousMap.polynomial_comp_attachBound_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2423b858edcaa7a4364c27ac2b4d5ea335513cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
