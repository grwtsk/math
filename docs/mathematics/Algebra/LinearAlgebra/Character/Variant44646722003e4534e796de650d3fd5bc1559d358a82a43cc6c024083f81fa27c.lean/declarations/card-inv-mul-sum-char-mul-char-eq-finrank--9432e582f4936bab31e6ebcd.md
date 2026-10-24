# card_inv_mul_sum_char_mul_char_eq_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0117103-21ca-4918-8cd9-b640730f8959",
  "kind": "theorem",
  "lexical_name": "card_inv_mul_sum_char_mul_char_eq_finrank",
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
  "slug": "card-inv-mul-sum-char-mul-char-eq-finrank--9432e582f4936bab31e6ebcd",
  "source": {
    "blob": "50df4080b1f98bc6fa3308787dab1228e79a32ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9432e582f4936bab31e6ebcd10b666b89a140fa0cf59d6dec6fd784a0875242a",
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

Occurrence: `result:f0117103-21ca-4918-8cd9-b640730f8959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_inv_mul_sum_char_mul_char_eq_finrank :
    (Nat.card G : k)⁻¹ * ∑ g : G, σ.character g * ρ.character g⁻¹ =
      finrank k (IntertwiningMap ρ σ) := by
  simp_rw [mul_comm, ← char_linHom, card_inv_mul_sum_char_eq_finrank,
    (invariantsEquivIntertwiningMap ρ σ).finrank_eq]

end Group

section Orthogonality

variable {G k V W : Type*} [Group G] [Field k] [AddCommGroup V] [Module k V]
  [FiniteDimensional k V] [AddCommGroup W] [Module k W] [FiniteDimensional k W]
  (ρ : Representation k G V) (σ : Representation k G W)

variable [Fintype G] [Invertible (Nat.card G : k)] [IsAlgClosed k]

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50df4080b1f98bc6fa3308787dab1228e79a32ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
