# forward_eq_bilateral_of_pow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1afb32cf-e921-3edd-bd86-ca1fad173b77",
  "kind": "theorem",
  "lexical_name": "forward_eq_bilateral_of_pow_eq_one",
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
  "slug": "forward-eq-bilateral-of-pow-eq-one--c7f0af0a173d9a08dd76ee5e",
  "source": {
    "blob": "6c1f3aeba8d25732796af4ff130cf2920e70f2d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f0af0a173d9a08dd76ee5efcb6a7c221ed21e8474bff734deb85540fccbc80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1afb32cf-e921-3edd-bd86-ca1fad173b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forward_eq_bilateral_of_pow_eq_one
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1) :
    G.ForwardCausalEquivalent = G.BilateralCausalEquivalent := by
  funext x y
  apply propext
  constructor
  · intro hforward
    refine ⟨hforward, ?_⟩
    intro t ρ
    have hle : t ≤ N * t := by
      exact Nat.le_mul_of_pos_left t hNpos
    have hpow : G.step ^ (N * t) = 1 := by
      rw [pow_mul, hN, one_pow]
    have hmul :
        G.step ^ (N * t - t) * G.step ^ t = 1 := by
      rw [← pow_add, Nat.sub_add_cancel hle, hpow]
    have hinverse :
        G.step.symm ^ t = G.step ^ (N * t - t) := by
      change G.step⁻¹ ^ t = G.step ^ (N * t - t)
      rw [inv_pow]
      exact inv_eq_of_mul_eq_one_left hmul
    rw [hinverse]
    exact hforward (N * t - t) ρ
  · intro h
    exact h.1

/-!
## Transporting the quotient under finite order

The equality of observational kernels above induces an actual equivalence of
their quotients.  It is identity-on-representatives; no state encoding or
choice of representative is introduced.  Conjugating the bilateral quotient
permutation through this equivalence equips the forward quotient with a
permutation exactly when a positive identity power has been supplied.
-/

/--
Under a positive identity power, the forward and bilateral quotient types are
canonically equivalent by the identity map on concrete representatives.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c1f3aeba8d25732796af4ff130cf2920e70f2d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
