# eigenvalue_pos_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17965819-0c19-e25b-b4cc-93d9b68f0bc0",
  "kind": "theorem",
  "lexical_name": "eigenvalue_pos_of_pos",
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
  "slug": "eigenvalue-pos-of-pos--006759d926d10add3020f029",
  "source": {
    "blob": "6c82b28ea10f6dff4c1d0bf6279278d442b66b01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 310,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:006759d926d10add3020f0292581ad5ef997f916bdca591312340d96d560c77c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17965819-0c19-e25b-b4cc-93d9b68f0bc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvalue_pos_of_pos {μ : ℝ} {T : E →ₗ[𝕜] E} (hμ : HasEigenvalue T μ)
    (hnn : ∀ x : E, 0 < IsROrC.re ⟪x, T x⟫) : 0 < μ := by
  obtain ⟨v, hv⟩ := hμ.exists_hasEigenvector
  have hpos : (0 : ℝ) < ‖v‖ ^ 2 := by simpa only [sq_pos_iff, norm_ne_zero_iff] using hv.2
  have : IsROrC.re ⟪v, T v⟫ = μ * ‖v‖ ^ 2 := by
    have := congr_arg IsROrC.re (inner_product_apply_eigenvector hv.1)
    -- porting note: why can't `exact_mod_cast` do this? These lemmas are marked `norm_cast`
    rw [←IsROrC.ofReal_pow, ←IsROrC.ofReal_mul] at this
    exact_mod_cast this
  exact (zero_lt_mul_right hpos).mp (this ▸ hnn v)
#align eigenvalue_pos_of_pos eigenvalue_pos_of_pos

end Nonneg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c82b28ea10f6dff4c1d0bf6279278d442b66b01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
