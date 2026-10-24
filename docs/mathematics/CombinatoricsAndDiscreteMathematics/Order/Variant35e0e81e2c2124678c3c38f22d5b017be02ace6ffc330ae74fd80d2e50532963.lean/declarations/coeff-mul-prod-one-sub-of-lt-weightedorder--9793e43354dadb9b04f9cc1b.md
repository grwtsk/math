# coeff_mul_prod_one_sub_of_lt_weightedOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1dde47d-2bd3-f9c5-0b74-f881c63fb1aa",
  "kind": "theorem",
  "lexical_name": "coeff_mul_prod_one_sub_of_lt_weightedOrder",
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
  "slug": "coeff-mul-prod-one-sub-of-lt-weightedorder--9793e43354dadb9b04f9cc1b",
  "source": {
    "blob": "c4242a76deabd8311c3fde2213f378c144417003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 353,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9793e43354dadb9b04f9cc1b1281a4dda629b98771c5a3a277223b10caae5060",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1dde47d-2bd3-f9c5-0b74-f881c63fb1aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_prod_one_sub_of_lt_weightedOrder {R ι : Type*} [CommRing R] (d : σ →₀ ℕ)
    (s : Finset ι) (f : MvPowerSeries σ R) (g : ι → MvPowerSeries σ R)
    (h : ∀ i ∈ s, (weight w d) < weightedOrder w (g i)) :
    coeff d (f * ∏ i ∈ s, (1 - g i)) = coeff d f := by
  classical
  induction s using Finset.induction_on with
  | empty => simp only [Finset.prod_empty, mul_one]
  | insert a s ha ih =>
    simp only [Finset.mem_insert, forall_eq_or_imp] at h
    rw [Finset.prod_insert ha, ← mul_assoc, mul_right_comm,
      coeff_mul_left_one_sub_of_lt_weightedOrder w h.1, ih h.2]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4242a76deabd8311c3fde2213f378c144417003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
