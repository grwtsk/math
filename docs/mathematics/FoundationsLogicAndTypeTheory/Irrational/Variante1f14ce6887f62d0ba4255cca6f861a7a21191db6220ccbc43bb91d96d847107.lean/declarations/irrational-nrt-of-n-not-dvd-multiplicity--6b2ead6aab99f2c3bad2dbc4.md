# irrational_nrt_of_n_not_dvd_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00ff3bfece4a3c7ce0500392ba4210b718996c4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65f5eacf-0f4a-3ac2-c5e5-979d0ad053ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a2bfe89-9a06-ad33-f040-f32a06813d77",
  "kind": "theorem",
  "lexical_name": "irrational_nrt_of_n_not_dvd_multiplicity",
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
  "slug": "irrational-nrt-of-n-not-dvd-multiplicity--6b2ead6aab99f2c3bad2dbc4",
  "source": {
    "blob": "00ff3bfece4a3c7ce0500392ba4210b718996c4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b2ead6aab99f2c3bad2dbc42e307549e4ea8828fe39d6f32fbb00689d719b35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a2bfe89-9a06-ad33-f040-f32a06813d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irrational_nrt_of_n_not_dvd_multiplicity {x : ℝ} (n : ℕ) {m : ℤ} (hm : m ≠ 0) (p : ℕ)
    [hp : Fact p.Prime] (hxr : x ^ n = m)
    (hv : multiplicity (p : ℤ) m % n ≠ 0) :
    Irrational x := by
  rcases Nat.eq_zero_or_pos n with (rfl | hnpos)
  · rw [eq_comm, pow_zero, ← Int.cast_one, Int.cast_inj] at hxr
    simp [hxr, multiplicity_of_one_right (mt isUnit_iff_dvd_one.1
      (mt Int.natCast_dvd_natCast.1 hp.1.not_dvd_one)), Nat.zero_mod] at hv
  refine irrational_nrt_of_notint_nrt _ _ hxr ?_ hnpos
  rintro ⟨y, rfl⟩
  rw [← Int.cast_pow, Int.cast_inj] at hxr
  subst m
  have : y ≠ 0 := by rintro rfl; rw [zero_pow hnpos.ne'] at hm; exact hm rfl
  rw [(Int.finiteMultiplicity_iff.2 ⟨by simp [hp.1.ne_one], this⟩).multiplicity_pow
    (Nat.prime_iff_prime_int.1 hp.1), Nat.mul_mod_right] at hv
  exact hv rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00ff3bfece4a3c7ce0500392ba4210b718996c4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
