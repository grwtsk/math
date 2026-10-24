# quotientEquivOrthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a22110cd4647b63741d6ef5b32d7400feabd1db1cf8237f1aea1d85fd2c1e71",
  "kind": "def",
  "lexical_name": "quotientEquivOrthogonal",
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
  "slug": "quotientequivorthogonal--02e9d5d93a89ca20bf8cdc88",
  "source": {
    "blob": "ecf025481612a64304da7f1a9bddaacd7157f4ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02e9d5d93a89ca20bf8cdc8839a8ada61b993e0db016cf08101d2e464831f542",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a22110cd4647b63741d6ef5b32d7400feabd1db1cf8237f1aea1d85fd2c1e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientEquivOrthogonal : (E ⧸ K) ≃ₗᵢ[𝕜] ↥Kᗮ where
  __ := K.quotientEquivOfIsCompl Kᗮ K.isCompl_orthogonal
  norm_map' y := by
    set f := K.quotientEquivOfIsCompl Kᗮ K.isCompl_orthogonal
    rw [← norm_coe, ← norm_orthogonalProjectionOnto_apply Kᗮ (f y).2,
      orthogonalProjectionOnto_orthogonal, ← norm_coe, starProjection_minimal, eq_comm]
    have h : ‖Quotient.mk (f y).val‖ = sInf ((fun (x : E) ↦ ‖(f y).val + x‖) '' K.toAddSubgroup) :=
      quotient_norm_mk_eq K.toAddSubgroup (f y).1
    convert! h using 2
    · simp [f]
    · rw [sInf_image', ← Equiv.iInf_comp (Equiv.neg K)]
      simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf025481612a64304da7f1a9bddaacd7157f4ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
