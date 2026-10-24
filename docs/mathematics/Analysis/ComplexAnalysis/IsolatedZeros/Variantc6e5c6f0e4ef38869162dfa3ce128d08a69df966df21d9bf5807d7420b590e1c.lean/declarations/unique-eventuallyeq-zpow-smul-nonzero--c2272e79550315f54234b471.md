# unique_eventuallyEq_zpow_smul_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ea78757-619e-6684-52d2-23fd4334b846",
  "kind": "lemma",
  "lexical_name": "unique_eventuallyEq_zpow_smul_nonzero",
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
  "slug": "unique-eventuallyeq-zpow-smul-nonzero--c2272e79550315f54234b471",
  "source": {
    "blob": "085df819054d03f4ff17f1f0725d73edad723a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 157,
    "path": "GRWTSK/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2272e79550315f54234b4717d3ce9bac65395528e5e1a2e0db272e4e66042e6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ea78757-619e-6684-52d2-23fd4334b846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unique_eventuallyEq_zpow_smul_nonzero {m n : ℤ}
    (hm : ∃ g, AnalyticAt 𝕜 g z₀ ∧ g z₀ ≠ 0 ∧ ∀ᶠ z in 𝓝[≠] z₀, f z = (z - z₀) ^ m • g z)
    (hn : ∃ g, AnalyticAt 𝕜 g z₀ ∧ g z₀ ≠ 0 ∧ ∀ᶠ z in 𝓝[≠] z₀, f z = (z - z₀) ^ n • g z) :
    m = n := by
  wlog! h_le : n ≤ m generalizing m n
  · exact ((this hn hm) h_le.le).symm
  let ⟨g, hg_an, _, hg_eq⟩ := hm
  let ⟨j, hj_an, hj_ne, hj_eq⟩ := hn
  contrapose! hj_ne
  have : ∃ᶠ z in 𝓝[≠] z₀, j z = (z - z₀) ^ (m - n) • g z := by
    apply Filter.Eventually.frequently
    rw [eventually_nhdsWithin_iff] at hg_eq hj_eq ⊢
    filter_upwards [hg_eq, hj_eq] with z hfz hfz' hz
    rw [← add_sub_cancel_left n m, add_sub_assoc, zpow_add₀ <| sub_ne_zero.mpr hz, mul_smul,
      hfz' hz, smul_right_inj <| zpow_ne_zero _ <| sub_ne_zero.mpr hz] at hfz
    exact hfz hz
  rw [frequently_eq_iff_eventually_eq hj_an] at this
  · rw [EventuallyEq.eq_of_nhds this, sub_self, zero_zpow _ (sub_ne_zero.mpr hj_ne), zero_smul]
  conv => enter [2, z, 1]; rw [← Int.toNat_sub_of_le h_le, zpow_natCast]
  exact ((analyticAt_id.sub analyticAt_const).pow _).smul hg_an

/-- For a function `f` on `𝕜`, and `z₀ ∈ 𝕜`, there exists at most one `n` such that on a
neighbourhood of `z₀` we have `f z = (z - z₀) ^ n • g z`, with `g` analytic and nonvanishing at
`z₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `085df819054d03f4ff17f1f0725d73edad723a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
