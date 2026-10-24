# pow_induction_on_right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6742030d-08e0-67f9-e7a9-e85e165c5da0",
  "kind": "theorem",
  "lexical_name": "pow_induction_on_right'",
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
  "slug": "pow-induction-on-right--ffd5f1750d6b1954979a50ec",
  "source": {
    "blob": "84a4d40807a9515c2d6310cb87368777e3201ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 461,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd5f1750d6b1954979a50ec3f81979a3f2870490fa88e53f9de31c105724e6a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6742030d-08e0-67f9-e7a9-e85e165c5da0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem pow_induction_on_right' {C : ∀ (n : ℕ) (x), x ∈ M ^ n → Prop}
    (hr : ∀ r : R, C 0 (algebraMap _ _ r) (algebraMap_mem r))
    (hadd : ∀ x y i hx hy, C i x hx → C i y hy → C i (x + y) (add_mem ‹_› ‹_›))
    (hmul :
      ∀ i x hx, C i x hx →
        ∀ m (hm : m ∈ M), C i.succ (x * m) ((pow_succ' M i).symm ▸ mul_mem_mul hx hm))
    -- porting note: swapped argument order to match order of `C`
    {n : ℕ} {x : A} (hx : x ∈ M ^ n) : C n x hx := by
  induction' n with n n_ih generalizing x
  · rw [pow_zero] at hx
    obtain ⟨r, rfl⟩ := hx
    exact hr r
  revert hx
  -- porting note: workaround for lean4#1926, was `simp_rw [pow_succ']`
  suffices h_lean4_1926 : ∀ (hx' : x ∈ M ^ n * M), C (Nat.succ n) x (by rwa [pow_succ']) from
    fun hx => h_lean4_1926 (by rwa [← pow_succ'])
  -- porting note: end workaround
  intro hx
  exact
    Submodule.mul_induction_on' (fun m hm x ih => hmul _ _ hm (n_ih _) _ ih)
      (fun x hx y hy Cx Cy => hadd _ _ _ _ _ Cx Cy) hx
#align submodule.pow_induction_on_right' Submodule.pow_induction_on_right'

/-- To show a property on elements of `M ^ n` holds, it suffices to show that it holds for scalars,
is closed under addition, and holds for `m * x` where `m ∈ M` and it holds for `x` -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a4d40807a9515c2d6310cb87368777e3201ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
