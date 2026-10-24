# coeff_mul_antidiagonal_of_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d209cc6a-56df-b2e3-a4a5-9cac7117b9a6",
  "kind": "theorem",
  "lexical_name": "coeff_mul_antidiagonal_of_finset",
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
  "slug": "coeff-mul-antidiagonal-of-finset--fa11b9ff03c779247b77ea9b",
  "source": {
    "blob": "317900db788ea8d44ee009876588ce0b4d0a5759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 915,
    "line": 897,
    "path": "GRWTSK/Algebra/Basic/Variant450d8c62f2f2333d9506055d3d351bd1c22f88d2294129bee68e44b1dc3033d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa11b9ff03c779247b77ea9b262be511d556039b044b84cd270fdaa555778dd3",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant450d8c62f2f2333d9506055d3d351bd1c22f88d2294129bee68e44b1dc3033d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d209cc6a-56df-b2e3-a4a5-9cac7117b9a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–915.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_antidiagonal_of_finset (f g : SkewMonoidAlgebra k G) (x : G)
    (s : Finset (G × G)) (hs : ∀ {p : G × G}, p ∈ s ↔ p.1 * p.2 = x) :
    (f * g).coeff x = ∑ p ∈ s, f.coeff p.1 * p.1 • g.coeff p.2 := by
  classical
  let F : G × G → k := fun p ↦ if p.1 * p.2 = x then f.coeff p.1 * p.1 • g.coeff p.2 else 0
  calc
    (f * g).coeff x = ∑ a₁ ∈ f.support, ∑ a₂ ∈ g.support, F (a₁, a₂) := coeff_mul f g x
    _ = ∑ p ∈ f.support ×ˢ g.support, F p := by rw [Finset.sum_product]
    _ = ∑ p ∈ (f.support ×ˢ g.support).filter fun p : G × G ↦ p.1 * p.2 = x,
      f.coeff p.1 * p.1 • g.coeff p.2 := (Finset.sum_filter _ _).symm
    _ = ∑ p ∈ s.filter fun p : G × G ↦ p.1 ∈ f.support ∧ p.2 ∈ g.support,
      f.coeff p.1 * p.1 • g.coeff p.2 :=
      (Finset.sum_congr (by ext; simp [Finset.mem_filter, Finset.mem_product, hs, and_comm])
        fun _ _ ↦ rfl)
    _ = ∑ p ∈ s, f.coeff p.1 * p.1 • g.coeff p.2 :=
      Finset.sum_subset (Finset.filter_subset _ _) fun p hps hp ↦ by
        simp only [Finset.mem_filter, mem_support_iff, not_and, Classical.not_not] at hp ⊢
        by_cases h1 : f.coeff p.1 = 0 <;> simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant450d8c62f2f2333d9506055d3d351bd1c22f88d2294129bee68e44b1dc3033d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant450d8c62f2f2333d9506055d3d351bd1c22f88d2294129bee68e44b1dc3033d5.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317900db788ea8d44ee009876588ce0b4d0a5759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
