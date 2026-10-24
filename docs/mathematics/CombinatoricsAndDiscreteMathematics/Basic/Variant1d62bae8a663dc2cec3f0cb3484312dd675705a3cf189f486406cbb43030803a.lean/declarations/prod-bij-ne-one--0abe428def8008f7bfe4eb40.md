# prod_bij_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c33c1373-1f56-2b8f-6df2-6a78b0912c65",
  "kind": "theorem",
  "lexical_name": "prod_bij_ne_one",
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
  "slug": "prod-bij-ne-one--0abe428def8008f7bfe4eb40",
  "source": {
    "blob": "f11bde8f5333ce0ac0672c1ae913e7258bde0243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 513,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0abe428def8008f7bfe4eb40f14a92fddee549a264b4829a453b66a8c734f55f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c33c1373-1f56-2b8f-6df2-6a78b0912c65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_bij_ne_one {s : Finset ι} {t : Finset κ} {f : ι → M} {g : κ → M}
    (i : ∀ a ∈ s, f a ≠ 1 → κ) (hi : ∀ a h₁ h₂, i a h₁ h₂ ∈ t)
    (i_inj : ∀ a₁ h₁₁ h₁₂ a₂ h₂₁ h₂₂, i a₁ h₁₁ h₁₂ = i a₂ h₂₁ h₂₂ → a₁ = a₂)
    (i_surj : ∀ b ∈ t, g b ≠ 1 → ∃ a h₁ h₂, i a h₁ h₂ = b) (h : ∀ a h₁ h₂, f a = g (i a h₁ h₂)) :
    ∏ x ∈ s, f x = ∏ x ∈ t, g x := by
  classical
  calc
    ∏ x ∈ s, f x = ∏ x ∈ s with f x ≠ 1, f x := by rw [prod_filter_ne_one]
    _ = ∏ x ∈ t with g x ≠ 1, g x :=
      prod_bij (fun a ha => i a (mem_filter.mp ha).1 <| by simpa using (mem_filter.mp ha).2)
        ?_ ?_ ?_ ?_
    _ = ∏ x ∈ t, g x := prod_filter_ne_one _
  · grind
  · solve_by_elim
  · intro b hb
    refine (mem_filter.mp hb).elim fun h₁ h₂ ↦ ?_
    obtain ⟨a, ha₁, ha₂, eq⟩ := i_surj b h₁ fun H ↦ by rw [H] at h₂; simp at h₂
    exact ⟨a, mem_filter.mpr ⟨ha₁, ha₂⟩, eq⟩
  · solve_by_elim

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f11bde8f5333ce0ac0672c1ae913e7258bde0243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
