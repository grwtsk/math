# cast_divNat_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c5b8997-5847-5cba-7f9d-cfa7e86e290d",
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
  "slug": "cast-divnat-of-ne-zero--0bf1abb64fcae1a6f943200e",
  "source": {
    "blob": "83a7d595e291f84a1a799518f2a755b9ee9455a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bf1abb64fcae1a6f943200ee7e2ae7bdc2a3e6466b6938be94f17ac296ef55e",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c5b8997-5847-5cba-7f9d-cfa7e86e290d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

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

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a7d595e291f84a1a799518f2a755b9ee9455a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
