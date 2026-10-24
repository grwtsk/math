# equiv_real_of_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ca0a5243c86339ac96f9edfd475b31a417e8d71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e57734c-ec90-35cf-2a5f-7a532a10f42b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d80ae5e4-b1f1-30a1-4f9d-435a92b19fd2",
  "kind": "theorem",
  "lexical_name": "equiv_real_of_unbounded",
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
  "slug": "equiv-real-of-unbounded--f3eeaa1768d19ed058f80022",
  "source": {
    "blob": "5ca0a5243c86339ac96f9edfd475b31a417e8d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 405,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3eeaa1768d19ed058f80022573ef025c42ca34880d955f2612f551f2792f507",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d80ae5e4-b1f1-30a1-4f9d-435a92b19fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_real_of_unbounded : f.IsEquiv real := by
  obtain ⟨m, hm⟩ := Classical.exists_not_of_not_forall notbdd
  have hfm1 : 1 < f m := lt_of_not_ge hm
  have oneltm : 1 < m := by
    contrapose! hm
    rcases le_one_iff_eq_zero_or_eq_one.mp hm with rfl | rfl <;> simp
  rw [← exists_nat_rpow_iff_isEquiv]
  set s := logb m (f m) with hs
  have hs0 : 0 < s := hs ▸ logb_pos (mod_cast oneltm) hfm1
  refine ⟨s⁻¹, inv_pos.mpr hs0, fun n ↦ ?_⟩
  rcases lt_trichotomy n 1 with h | rfl | h
  · obtain rfl : n = 0 := by lia
    simp [hs0.ne']
  · simp
  · simp only [real_eq_abs, abs_cast, Rat.cast_natCast]
    rw [rpow_inv_eq (by positivity) (by positivity) hs0.ne']
    have hfm : f m = m ^ s := by
      rw [rpow_logb (by positivity) (by norm_cast; omega) (zero_lt_one.trans hfm1)]
    have hfn : f n = n ^ logb n (f n) := by
      rw [rpow_logb (by positivity) (by norm_cast; omega)
        (map_pos_of_ne_zero f (by exact_mod_cast ne_zero_of_lt h))]
    rw [hfn, ← eq_of_eq_pow oneltm h notbdd hfm hfn]

end Archimedean

/-!
### The main result
-/

/-- **Ostrowski's Theorem**: every absolute value (with values in `ℝ`) on `ℚ` is equivalent
to either the standard absolute value or a `p`-adic absolute value for a prime `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca0a5243c86339ac96f9edfd475b31a417e8d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
