# heat_is_not_diffusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4454eb15027e46b77cf261ca776429067a12ec61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad345cf7-9376-c893-35f1-699359b8b77d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b17569ab-5fc6-9e4f-5211-dda7f6880378",
  "kind": "theorem",
  "lexical_name": "heat_is_not_diffusion",
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
  "slug": "heat-is-not-diffusion--95ff390a70cc635322f5e058",
  "source": {
    "blob": "4454eb15027e46b77cf261ca776429067a12ec61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95ff390a70cc635322f5e058027a678043b545d82f42e02f3a28c4d7bf846438",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b17569ab-5fc6-9e4f-5211-dda7f6880378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heat_is_not_diffusion :
    normSq (halfHeat (1,-1,0,0)) = 1/2 ∧
    normSq (diffuse (1,-1,0,0)) = 2 := by
  simp only [normSq, dot, halfHeat, diffuse, mean]
  constructor <;> grind

end QuantumCell
#print axioms QuantumCell.flip_involution
#print axioms QuantumCell.flip_square
#print axioms QuantumCell.phase_involution
#print axioms QuantumCell.phase_norm
#print axioms QuantumCell.harmonic_idempotent
#print axioms QuantumCell.harmonic_kernel
#print axioms QuantumCell.diffusion_involution
#print axioms QuantumCell.diffusion_norm
#print axioms QuantumCell.step_norm
#print axioms QuantumCell.inverse_step
#print axioms QuantumCell.uniform_normalized
#print axioms QuantumCell.single_marked_example
#print axioms QuantumCell.inverse_composition
#print axioms QuantumCell.heat_is_not_diffusion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4454eb15027e46b77cf261ca776429067a12ec61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
