# IsClosed.mk_lt_continuum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e01e4b98-1bdd-e717-2f60-f2d062425d1e",
  "kind": "theorem",
  "lexical_name": "IsClosed.mk_lt_continuum",
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
  "slug": "isclosed-mk-lt-continuum--a46d7d845c6a855d6f0b02c8",
  "source": {
    "blob": "b47878b8ca2e12127d4b212487bc862b2d17d8c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46d7d845c6a855d6f0b02c8142de59f2986b2702f9212a05abd9a58c8ae1e58",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e01e4b98-1bdd-e717-2f60-f2d062425d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.mk_lt_continuum [NormalSpace X] {s : Set X} (hs : IsClosed s)
    [DiscreteTopology s] : #s < 𝔠 := by
  -- Proof by contradiction: assume `𝔠 ≤ #s`
  by_contra! h
  -- Choose a countable dense set `t : Set X`
  rcases exists_countable_dense X with ⟨t, htc, htd⟩
  haveI := htc.to_subtype
  -- To obtain a contradiction, we will prove `2 ^ 𝔠 ≤ 𝔠`.
  refine (Cardinal.cantor 𝔠).not_le ?_
  calc
    -- Any function `s → ℝ` is continuous, hence `2 ^ 𝔠 ≤ #C(s, ℝ)`
    2 ^ 𝔠 ≤ #C(s, ℝ) := by
      rw [ContinuousMap.equivFnOfDiscrete.cardinal_eq, mk_arrow, mk_real, lift_continuum,
        lift_uzero]
      exact (power_le_power_left two_ne_zero h).trans (power_le_power_right (nat_lt_continuum 2).le)
    -- By the Tietze Extension Theorem, any function `f : C(s, ℝ)` can be extended to `C(X, ℝ)`,
    -- hence `#C(s, ℝ) ≤ #C(X, ℝ)`
    _ ≤ #C(X, ℝ) := by
      choose f hf using ContinuousMap.exists_restrict_eq (Y := ℝ) hs
      have hfi : Injective f := LeftInverse.injective hf
      exact mk_le_of_injective hfi
    -- Since `t` is dense, restriction `C(X, ℝ) → C(t, ℝ)` is injective, hence `#C(X, ℝ) ≤ #C(t, ℝ)`
    _ ≤ #C(t, ℝ) := mk_le_of_injective <| ContinuousMap.injective_restrict htd
    _ ≤ #(t → ℝ) := mk_le_of_injective DFunLike.coe_injective
    -- Since `t` is countable, we have `#(t → ℝ) ≤ 𝔠`
    _ ≤ 𝔠 := by
      rw [mk_arrow, mk_real, lift_uzero, lift_continuum, continuum, ← power_mul]
      exact power_le_power_left two_ne_zero mk_le_aleph0

/-- Let `s` be a closed set in a separable space. If the induced topology on `s` is discrete and `s`
has cardinality at least continuum, then the ambient space is not a normal space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b47878b8ca2e12127d4b212487bc862b2d17d8c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
