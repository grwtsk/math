# ofTensorProductEquivOfFiniteNoetherian_symm_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea83bc20-b5fc-a6e0-afd3-e755f900cc67",
  "kind": "lemma",
  "lexical_name": "ofTensorProductEquivOfFiniteNoetherian_symm_of",
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
  "slug": "oftensorproductequivoffinitenoetherian-symm-of--2d191c19535ec9cf48a75ff3",
  "source": {
    "blob": "11615966bcf535215e3c8ebf2f9bd4886a739561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 355,
    "path": "GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d191c19535ec9cf48a75ff31c57ee2737ad3352bef90391b3a7dcd5b81cf91b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea83bc20-b5fc-a6e0-afd3-e755f900cc67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofTensorProductEquivOfFiniteNoetherian_symm_of
    [Module.Finite R M] (x : M) :
    (ofTensorProductEquivOfFiniteNoetherian I M).symm ((of I M) x) = 1 ⊗ₜ x := by
  have h : (of I M) x = ofTensorProductEquivOfFiniteNoetherian I M (1 ⊗ₜ x) := by
    simp
  rw [h, LinearEquiv.symm_apply_apply]

section

variable {M : Type u} [AddCommGroup M] [Module R M]
variable {N : Type u} [AddCommGroup N] [Module R N] (f : M →ₗ[R] N)
variable [Module.Finite R M] [Module.Finite R N]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11615966bcf535215e3c8ebf2f9bd4886a739561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
