# aux_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26e4b96d-11df-1b50-c403-d990fda2fdb3",
  "kind": "theorem",
  "lexical_name": "aux_mul",
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
  "slug": "aux-mul--7173bdba4a1acf1b68f6d646",
  "source": {
    "blob": "0559c532a718d0a0c93c940c0564cbf908459008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 217,
    "path": "GRWTSK/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7173bdba4a1acf1b68f6d646dbd354a6227dc82686f64d8f0f573453818a50f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26e4b96d-11df-1b50-c403-d990fda2fdb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aux_mul (x y : even Q) : aux f (x * y) = aux f x * aux f y := by
  obtain ⟨x, x_property⟩ := x
  cases y
  refine (congr_arg Prod.fst (foldr_mul _ _ _ _ _ _)).trans ?_
  dsimp only
  induction x, x_property using even_induction Q with
  | algebraMap r =>
    rw [foldr_algebraMap, aux_algebraMap]
    exact Algebra.smul_def r _
  | add x y hx hy ihx ihy =>
    rw [LinearMap.map_add, Prod.fst_add, ihx, ihy, ← add_mul, ← LinearMap.map_add]
    rfl
  | ι_mul_ι_mul m₁ m₂ x hx ih =>
    rw [aux_apply, foldr_mul, foldr_mul, foldr_ι, foldr_ι, fst_fFold_fFold, ih, ← mul_assoc,
      Subtype.coe_mk, foldr_mul, foldr_mul, foldr_ι, foldr_ι, fst_fFold_fFold]
    rfl

end even.lift

open even.lift

variable (Q)

/-- Every algebra morphism from the even subalgebra is in one-to-one correspondence with a
bilinear map that sends duplicate arguments to the quadratic form, and contracts across
multiplication. -/
@[simps! symm_apply_bilin]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0559c532a718d0a0c93c940c0564cbf908459008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
