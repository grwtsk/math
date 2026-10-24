# cast_divNat_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d8a5d4c-096b-e1f9-cb1f-94297be5d361",
  "kind": "lemma",
  "lexical_name": "cast_divNat_of_ne_zero",
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
  "slug": "cast-divnat-of-ne-zero--2edf79f3a6be662dcbd26cac",
  "source": {
    "blob": "9554cf30fb157ab3256363117be2f87c2b2a63c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2edf79f3a6be662dcbd26cac9b116147cbfb6ddfcfa7e1de3d1dfcc0aaecef3b",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d8a5d4c-096b-e1f9-cb1f-94297be5d361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_cast] lemma cast_divNat_of_ne_zero (a : ℕ) {b : ℕ} (hb : (b : α) ≠ 0) :
    divNat a b = (a / b : α) := by
  rcases e : divNat a b with ⟨⟨n, d, h, c⟩, hn⟩
  rw [← Rat.num_nonneg] at hn
  lift n to ℕ using hn
  have hd : (d : α) ≠ 0 := by
    refine fun hd ↦ hb ?_
    have : Rat.divInt a b = _ := congr_arg NNRat.cast e
    obtain ⟨k, rfl⟩ : d ∣ b := by simpa [Int.natCast_dvd_natCast, this] using Rat.den_dvd a b
    simp [*]
  have hb' : b ≠ 0 := by rintro rfl; exact hb Nat.cast_zero
  simp_rw [Rat.mk_eq_divInt, mk_divInt, divNat_inj hb' h] at e
  rw [cast_def]
  dsimp
  rw [Commute.div_eq_div_iff _ hd hb]
  · norm_cast
    rw [e]
  exact b.commute_cast _

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9554cf30fb157ab3256363117be2f87c2b2a63c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
