# prime_of_fac_equiv_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6395f3bc-f974-0a85-5e7d-f9d2550c0ce4",
  "kind": "theorem",
  "lexical_name": "prime_of_fac_equiv_neg_one",
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
  "slug": "prime-of-fac-equiv-neg-one--8cc5c5ddebe42f359297baf2",
  "source": {
    "blob": "0c65646e2027e772ceaf6a5aab812ce439c79ee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantb8c5433a69863ae9122d760f7f620bc04eccc571e0ca4c733fd00fa23a2d0744.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc5c5ddebe42f359297baf2881af0b8104ba28a21c164eb68543950379dbbf9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantb8c5433a69863ae9122d760f7f620bc04eccc571e0ca4c733fd00fa23a2d0744.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6395f3bc-f974-0a85-5e7d-f9d2550c0ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_of_fac_equiv_neg_one (h : ((n - 1)! : ZMod n) = -1) (h1 : n ≠ 1) : Prime n := by
  rcases eq_or_ne n 0 with (rfl | h0)
  · norm_num at h
  replace h1 : 1 < n := n.two_le_iff.mpr ⟨h0, h1⟩
  by_contra h2
  obtain ⟨m, hm1, hm2 : 1 < m, hm3⟩ := exists_dvd_of_not_prime2 h1 h2
  have hm : m ∣ (n - 1)! := Nat.dvd_factorial (pos_of_gt hm2) (le_pred_of_lt hm3)
  refine' hm2.ne' (Nat.dvd_one.mp ((Nat.dvd_add_right hm).mp (hm1.trans _)))
  rw [← ZMod.nat_cast_zmod_eq_zero_iff_dvd, cast_add, cast_one, h, add_left_neg]
#align nat.prime_of_fac_equiv_neg_one Nat.prime_of_fac_equiv_neg_one

/-- **Wilson's Theorem**: For `n ≠ 1`, `(n-1)!` is congruent to `-1` modulo `n` iff n is prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantb8c5433a69863ae9122d760f7f620bc04eccc571e0ca4c733fd00fa23a2d0744.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantb8c5433a69863ae9122d760f7f620bc04eccc571e0ca4c733fd00fa23a2d0744.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c65646e2027e772ceaf6a5aab812ce439c79ee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
