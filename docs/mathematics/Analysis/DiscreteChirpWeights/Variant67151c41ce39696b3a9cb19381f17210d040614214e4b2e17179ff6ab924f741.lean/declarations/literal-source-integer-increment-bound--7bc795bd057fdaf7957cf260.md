# literal_source_integer_increment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dddd3d6-dd44-31e3-9e13-4a385240cdfa",
  "kind": "theorem",
  "lexical_name": "literal_source_integer_increment_bound",
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
  "slug": "literal-source-integer-increment-bound--7bc795bd057fdaf7957cf260",
  "source": {
    "blob": "521871c4db571ef92aa347f6e47576ed3583cb69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 83,
    "path": "GRWTSK/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bc795bd057fdaf7957cf26013efdfda79ba9288fc050f32d936fe24c5926e53",
  "verification": {
    "reference": "docs/verification/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dddd3d6-dd44-31e3-9e13-4a385240cdfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_source_integer_increment_bound {n : ℕ} (hn : 2 ≤ n) :
    |signal n - signal (n - 1 : ℕ)| ≤ 11 / 12 := by
  have hx : ((n - 1 : ℕ) : ℝ) ∈ Set.Ici (1 : ℝ) := by
    change 1 ≤ ((n - 1 : ℕ) : ℝ)
    exact_mod_cast (show 1 ≤ n - 1 by omega)
  have hy : (n : ℝ) ∈ Set.Ici (1 : ℝ) := by
    change 1 ≤ (n : ℝ)
    exact_mod_cast (show 1 ≤ n by omega)
  have hderiv : ∀ x ∈ Set.Ici (1 : ℝ), HasDerivWithinAt signal (signalDerivative x)
      (Set.Ici (1 : ℝ)) x := by
    intro x hx
    exact (exact_signal_derivative (by have := Set.mem_Ici.mp hx; linarith)).hasDerivWithinAt
  have hbound : ∀ x ∈ Set.Ici (1 : ℝ), ‖signalDerivative x‖ ≤ 11 / 12 := by
    intro x hx
    simpa only [Real.norm_eq_abs] using actual_signal_derivative_bound hx
  have h := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le hderiv hbound (convex_Ici 1) hx hy
  have he : (n : ℝ) - (n - 1 : ℕ) = 1 := by
    rw [Nat.cast_sub (by omega : 1 ≤ n), Nat.cast_one]; ring
  simpa only [Real.norm_eq_abs, he, abs_one, mul_one] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `521871c4db571ef92aa347f6e47576ed3583cb69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
