# IsWeierstrassDivisionAt.coeff_f_sub_r_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb813c3b-d94f-dca0-e84d-1945f2df5841",
  "kind": "theorem",
  "lexical_name": "IsWeierstrassDivisionAt.coeff_f_sub_r_mem",
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
  "slug": "isweierstrassdivisionat-coeff-f-sub-r-mem--b702a020cb3ff5070cbe7625",
  "source": {
    "blob": "31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 126,
    "path": "GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b702a020cb3ff5070cbe76254591aa61847a8816d5212d283e29c3b270b86c1f",
  "verification": {
    "reference": "docs/verification/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb813c3b-d94f-dca0-e84d-1945f2df5841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWeierstrassDivisionAt.coeff_f_sub_r_mem (H : f.IsWeierstrassDivisionAt g q r I)
    {i : ℕ} (hi : i < (g.map (Ideal.Quotient.mk I)).order.toNat) : coeff A i (f - r) ∈ I := by
  replace H := H.2
  rw [← sub_eq_iff_eq_add] at H
  rw [H]
  refine coeff_mul_mem_ideal_of_coeff_left_mem_ideal i (fun j hj ↦ ?_) i le_rfl
  have := coeff_of_lt_order_toNat _ (lt_of_le_of_lt hj hi)
  rwa [coeff_map, ← RingHom.mem_ker, Ideal.mk_ker] at this

end IsWeierstrassDivisionAt

section IsWeierstrassDivisorAt

variable (g : A⟦X⟧) (I : Ideal A)

/-- `PowerSeries.IsWeierstrassDivisorAt g I` is a `Prop` which asserts that the `n`-th coefficient
of `g` is a unit, where `n` is the order of the
image of `g` in `(A / I)⟦X⟧` (defined to be zero if such image is zero, in which case
it's mathematically not considered).

This property guarantees that if the ring is `I`-adic complete, then `g` can be used as a divisor
in Weierstrass division (`PowerSeries.IsWeierstrassDivisorAt.isWeierstrassDivisionAt_div_mod`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
