# cotangentEquivIdeal_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a977419-3b3b-1fa9-3434-e60797bda24a",
  "kind": "theorem",
  "lexical_name": "cotangentEquivIdeal_symm_apply",
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
  "slug": "cotangentequivideal-symm-apply--0007809480e32b9b913b5d41",
  "source": {
    "blob": "7f58c6c416ecdc1c419eb14bf3534c4a297ef33f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 174,
    "path": "GRWTSK/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0007809480e32b9b913b5d4182f20c8e641d4cf18c58af2b52ddc0f6556ebe12",
  "verification": {
    "reference": "docs/verification/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a977419-3b3b-1fa9-3434-e60797bda24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cotangentEquivIdeal_symm_apply (x : R) (hx : x ∈ I) :
    -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to specify `(R₂ := R)` because `I.toCotangent` suggested `R ⧸ I^2` instead
    I.cotangentEquivIdeal.symm ⟨(I ^ 2).mkQ x,
      -- timeout (200000 heartbeats) without `by exact`
      by exact Submodule.mem_map_of_mem (F := R →ₗ[R] R ⧸ I ^ 2) (f := (I ^ 2).mkQ) hx⟩ =
      I.toCotangent (R := R) ⟨x, hx⟩ := by
  apply I.cotangentEquivIdeal.injective
  rw [I.cotangentEquivIdeal.apply_symm_apply]
  ext
  rfl

variable {A B : Type*} [CommRing A] [CommRing B] [Algebra R A] [Algebra R B]

/-- The lift of `f : A →ₐ[R] B` to `A ⧸ J ^ 2 →ₐ[R] B` with `J` being the kernel of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f58c6c416ecdc1c419eb14bf3534c4a297ef33f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
