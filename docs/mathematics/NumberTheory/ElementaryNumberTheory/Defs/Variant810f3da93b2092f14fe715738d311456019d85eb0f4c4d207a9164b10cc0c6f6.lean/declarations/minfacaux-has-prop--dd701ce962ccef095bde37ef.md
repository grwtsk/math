# minFacAux_has_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:589048a0-3a48-916d-61cd-cd80c17fe2df",
  "kind": "theorem",
  "lexical_name": "minFacAux_has_prop",
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
  "slug": "minfacaux-has-prop--dd701ce962ccef095bde37ef",
  "source": {
    "blob": "3af0f375b00d6a84f3c71f761520a32a7239a928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 246,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd701ce962ccef095bde37ef53c973f1a824827713d24e85df47d46ad0fb13df",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:589048a0-3a48-916d-61cd-cd80c17fe2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem minFacAux_has_prop {n : ℕ} (n2 : 2 ≤ n) :
    ∀ k i, k = 2 * i + 3 → (∀ m, 2 ≤ m → m ∣ n → k ≤ m) → minFacProp n (minFacAux n k)
  | k => fun i e a => by
    rw [minFacAux]
    by_cases h : n < k * k
    · have pp : Prime n :=
        prime_def_le_sqrt.2
          ⟨n2, fun m m2 l d => not_lt_of_ge l <| lt_of_lt_of_le (sqrt_lt.2 h) (a m m2 d)⟩
      simpa only [k, h] using
        ⟨n2, dvd_rfl, fun m m2 d => le_of_eq ((dvd_prime_two_le pp m2).1 d).symm⟩
    have k2 : 2 ≤ k := by
      subst e
      apply Nat.le_add_left
    simp only [k, h, ↓reduceIte]
    by_cases dk : k ∣ n <;> simp only [k, dk, ↓reduceIte]
    · exact ⟨k2, dk, a⟩
    · refine
        have := minFac_lemma n k h
        minFacAux_has_prop n2 (k + 2) (i + 1) (by simp [k, e, Nat.left_distrib, add_right_comm])
          fun m m2 d => ?_
      rcases Nat.eq_or_lt_of_le (a m m2 d) with rfl | ml
      · contradiction
      apply (Nat.eq_or_lt_of_le ml).resolve_left
      intro me
      rw [← me, e] at d
      have d' : 2 * (i + 2) ∣ n := d
      have := a _ le_rfl (dvd_of_mul_right_dvd d')
      rw [e] at this
      exact absurd this (by contradiction)
  termination_by k => sqrt n + 2 - k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af0f375b00d6a84f3c71f761520a32a7239a928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
