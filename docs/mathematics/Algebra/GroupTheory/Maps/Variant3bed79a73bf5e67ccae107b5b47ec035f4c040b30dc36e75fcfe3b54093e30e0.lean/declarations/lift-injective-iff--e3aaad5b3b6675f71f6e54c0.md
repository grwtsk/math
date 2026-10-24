# lift_injective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f6b633e-d6df-727f-c43b-2c25f07d1cba",
  "kind": "theorem",
  "lexical_name": "lift_injective_iff",
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
  "slug": "lift-injective-iff--e3aaad5b3b6675f71f6e54c0",
  "source": {
    "blob": "3f824c934d876e50d5677fbd751bb1c1be8b562a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 251,
    "path": "GRWTSK/Algebra/GroupTheory/Maps/Variant3bed79a73bf5e67ccae107b5b47ec035f4c040b30dc36e75fcfe3b54093e30e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3aaad5b3b6675f71f6e54c008e3f73633c6bf605e367ab54df8154474b6a124",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Maps/Variant3bed79a73bf5e67ccae107b5b47ec035f4c040b30dc36e75fcfe3b54093e30e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f6b633e-d6df-727f-c43b-2c25f07d1cba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_injective_iff :
    Function.Injective (f.lift hg) ↔ ∀ x y, f x = f y ↔ g x = g y := by
  constructor
  · intro H x y
    constructor
    · exact f.eq_of_eq hg
    · intro h
      rw [← f.lift_eq hg, ← f.lift_eq hg] at h
      exact H h
  · intro H z w h
    obtain ⟨_, _⟩ := f.surj z
    obtain ⟨_, _⟩ := f.surj w
    rw [← f.mk'_sec z, ← f.mk'_sec w]
    exact (mul_inv f.map_units).2 ((H _ _).2 <| (mul_inv hg).1 h)

variable {T : Submonoid P} (hy : ∀ y : S, g y ∈ T) {Q : Type*} [CommMonoid Q]
  (k : LocalizationMap T Q)

/-- Given a `CommMonoid` homomorphism `g : M →* P` where for Submonoids `S ⊆ M, T ⊆ P` we have
`g(S) ⊆ T`, the induced Monoid homomorphism from the Localization of `M` at `S` to the
Localization of `P` at `T`: if `f : M →* N` and `k : P →* Q` are Localization maps for `S` and
`T` respectively, we send `z : N` to `k (g x) * (k (g y))⁻¹`, where `(x, y) : M × S` are such
that `z = f x * (f y)⁻¹`. -/
@[to_additive
/-- Given an `AddCommMonoid` homomorphism `g : M →+ P` where for AddSubmonoids `S ⊆ M, T ⊆ P` we
have `g(S) ⊆ T`, the induced AddMonoid homomorphism from the Localization of `M` at `S` to the
Localization of `P` at `T`: if `f : M →+ N` and `k : P →+ Q` are Localization maps for `S` and
`T` respectively, we send `z : N` to `k (g x) - k (g y)`, where `(x, y) : M × S` are such
that `z = f x - f y`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Maps/Variant3bed79a73bf5e67ccae107b5b47ec035f4c040b30dc36e75fcfe3b54093e30e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Maps/Variant3bed79a73bf5e67ccae107b5b47ec035f4c040b30dc36e75fcfe3b54093e30e0.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f824c934d876e50d5677fbd751bb1c1be8b562a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
