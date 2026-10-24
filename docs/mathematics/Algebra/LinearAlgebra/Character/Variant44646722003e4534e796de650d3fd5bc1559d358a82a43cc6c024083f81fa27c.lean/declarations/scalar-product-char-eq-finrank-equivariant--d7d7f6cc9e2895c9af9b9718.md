# scalar_product_char_eq_finrank_equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8076d509-4134-b19f-27ee-49ff03f7bed0",
  "kind": "theorem",
  "lexical_name": "scalar_product_char_eq_finrank_equivariant",
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
  "slug": "scalar-product-char-eq-finrank-equivariant--d7d7f6cc9e2895c9af9b9718",
  "source": {
    "blob": "50df4080b1f98bc6fa3308787dab1228e79a32ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 231,
    "path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d7f6cc9e2895c9af9b97189d986fe9c9a3c955e90e20c56059f7f8a584fdd4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8076d509-4134-b19f-27ee-49ff03f7bed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_product_char_eq_finrank_equivariant (V W : FDRep k G) :
    (Nat.card G : k)⁻¹ * ∑ g : G, W.character g * V.character g⁻¹ =
    Module.finrank k (V ⟶ W) := by
  conv_lhs => congr; rfl; congr; rfl; intro _; rw [mul_comm, ← FDRep.char_linHom]
  -- The scalar product is the character of `Hom(V, W).`
  rw [FDRep.average_char_eq_finrank_invariants, ← LinearEquiv.finrank_eq
    (Representation.linHom.invariantsEquivFDRepHom V W), of_ρ']
  -- The average over the group of the character of a representation equals the dimension of the
  -- space of invariants, and the space of invariants of `Hom(V, W)` is the subspace of
  -- `G`-equivariant linear maps, `Hom_G(V, W)`.

end Group

section Orthogonality

variable {G : Type v} [Group G] [IsAlgClosed k]

variable [Fintype G] [Invertible (Nat.card G : k)]

open scoped Classical in
/-- Orthogonality of characters for irreducible representations of finite group over an
algebraically closed field whose characteristic doesn't divide the order of the group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50df4080b1f98bc6fa3308787dab1228e79a32ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
