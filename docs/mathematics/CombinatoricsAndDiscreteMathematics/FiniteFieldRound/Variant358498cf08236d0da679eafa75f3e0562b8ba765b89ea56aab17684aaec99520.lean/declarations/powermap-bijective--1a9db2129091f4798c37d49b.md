# powerMap_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aabb02724b2ee7719df6e96174b79c29fcabbed5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fee9f8f5-3d3e-42be-0d6d-b6d452b2c954",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b70229bd-77ad-d5d4-785c-6eb8ee4a9473",
  "kind": "theorem",
  "lexical_name": "powerMap_bijective",
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
  "slug": "powermap-bijective--1a9db2129091f4798c37d49b",
  "source": {
    "blob": "aabb02724b2ee7719df6e96174b79c29fcabbed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a9db2129091f4798c37d49bb9524be337d1fee725eb25dd72eff37be8ead487",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b70229bd-77ad-d5d4-785c-6eb8ee4a9473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerMap_bijective
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1)) :
    Function.Bijective (fun x : F => x ^ d) := by
  have hd_ne : d ≠ 0 := Nat.ne_of_gt hd_pos
  have hcard : Nat.card Fˣ = Fintype.card F - 1 := by
    rw [Nat.card_units, Nat.card_eq_fintype_card]
  have hcop : (Nat.card Fˣ).Coprime d := by
    rw [hcard]
    exact hd.symm
  have hunit := (powCoprime hcop).bijective
  constructor
  · intro x y hxy
    by_cases hx : x = 0
    · subst x
      have hy : y = 0 := by
        by_contra hy
        have hzero : (0 : F) ^ d = 0 := zero_pow hd_ne
        have hnonzero : y ^ d ≠ 0 := pow_ne_zero d hy
        exact hnonzero (hxy.symm.trans hzero)
      exact hy.symm
    · by_cases hy : y = 0
      · subst y
        have hzero : (0 : F) ^ d = 0 := zero_pow hd_ne
        have hnonzero : x ^ d ≠ 0 := pow_ne_zero d hx
        exact (hnonzero (hxy.trans hzero)).elim
      · let ux : Fˣ := Units.mk0 x hx
        let uy : Fˣ := Units.mk0 y hy
        have hu : ux ^ d = uy ^ d := by
          apply Units.ext
          simpa [ux, uy] using hxy
        have huv : ux = uy := hunit.1 hu
        exact congrArg Units.val huv
  · intro y
    by_cases hy : y = 0
    · exact ⟨0, by simp [hy, zero_pow hd_ne]⟩
    · let uy : Fˣ := Units.mk0 y hy
      obtain ⟨ux, hux⟩ := hunit.2 uy
      refine ⟨(ux : F), ?_⟩
      have hval := congrArg Units.val hux
      simpa [uy] using hval

/-- Exponentiation by a positive exponent coprime to `|F| - 1`, bundled as an
equivalence of the whole field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aabb02724b2ee7719df6e96174b79c29fcabbed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
