# isCoprime_of_gcd_eq_one_of_FLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:124e34ee-0a9f-f39e-a09b-dce5c82b606a",
  "kind": "lemma",
  "lexical_name": "isCoprime_of_gcd_eq_one_of_FLT",
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
  "slug": "iscoprime-of-gcd-eq-one-of-flt--b139f9eb0403cbcce45415a4",
  "source": {
    "blob": "90922bd0464359af2f9ff8cb304f2a52b0429e4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 252,
    "path": "GRWTSK/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b139f9eb0403cbcce45415a4a9a972d16e4d7c6c28a954f49a0822f078510a09",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:124e34ee-0a9f-f39e-a09b-dce5c82b606a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCoprime_of_gcd_eq_one_of_FLT {n : ℕ} {a b c : ℤ} (Hgcd : Finset.gcd {a, b, c} id = 1)
    (HF : a ^ n + b ^ n + c ^ n = 0) : IsCoprime a b := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [pow_zero, Int.reduceAdd, OfNat.ofNat_ne_zero] at HF
  refine isCoprime_of_prime_dvd ?_ <| (fun p hp hpa hpb ↦ hp.not_dvd_one ?_)
  · rintro ⟨rfl, rfl⟩
    simp only [ne_eq, hn, not_false_eq_true, zero_pow, add_zero, zero_add, pow_eq_zero_iff]
      at HF
    simp only [HF, Finset.mem_singleton, Finset.insert_eq_of_mem, Finset.gcd_singleton, id_eq,
      normalize_zero, zero_ne_one] at Hgcd
  · rw [← Hgcd]
    refine Finset.dvd_gcd_iff.mpr fun x hx ↦ ?_
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with hx | hx | hx <;> simp only [id_eq, hx, hpa, hpb,
      dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT hp hpa hpb HF]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90922bd0464359af2f9ff8cb304f2a52b0429e4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
