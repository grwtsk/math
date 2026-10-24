# finite_log_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f4e6f60-f168-07dd-19ce-026fec1db15f",
  "kind": "theorem",
  "lexical_name": "finite_log_tail_le",
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
  "slug": "finite-log-tail-le--213446b714d6fe76bde94c52",
  "source": {
    "blob": "80bc9570760691e8c72c19b6b555daa05fa8ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 101,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:213446b714d6fe76bde94c52c9badb6fb4385c7c60eb0daef7fe92b9b2371e54",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f4e6f60-f168-07dd-19ce-026fec1db15f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_log_tail_le (P : Finset ℕ) (hP : ∀ p∈P,3≤p) :
    (∑ p∈P,logPower p) ≤ (27/7:ℝ) := by
  have he : (∑ p∈P,logPower p)=∑ j∈P.image (fun p : ℕ=>p-3),logPower ((j+3:ℕ):ℝ) := by
    apply sum_bij (fun p _=>(p-3:ℕ))
    · intro p hp
      exact mem_image.mpr ⟨p,hp,rfl⟩
    · intro x hx y hy he
      have := hP x hx
      have := hP y hy
      omega
    · intro j hj
      obtain ⟨p,hp,rfl⟩ := mem_image.mp hj
      exact ⟨p,hp,rfl⟩
    · intro p hp
      have hh : p-3+3=p := by have := hP p hp;omega
      rw [hh]
  rw [he]
  have hn : ∀ j : ℕ,0≤logPower ((j+3:ℕ):ℝ) := by
    intro j
    apply logPower_nonneg
    exact_mod_cast (by omega : 2≤j+3)
  have hs : Summable (fun j : ℕ=>logPower ((j+3:ℕ):ℝ)) := by
    simpa only [Nat.cast_add,Nat.cast_ofNat] using tail_summable
  have hb : (∑' j : ℕ,logPower ((j+3:ℕ):ℝ))≤(27/7:ℝ) := by
    simpa only [Nat.cast_add,Nat.cast_ofNat] using tail_le_rational
  exact (hs.sum_le_tsum _ (fun j _=>hn j)).trans hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80bc9570760691e8c72c19b6b555daa05fa8ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
