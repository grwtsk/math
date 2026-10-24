# even_distribution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0fe154b-9357-b384-e303-9071fa16d5dd",
  "kind": "theorem",
  "lexical_name": "even_distribution",
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
  "slug": "even-distribution--0c4d2d62eb1a3e1d7bcf4847",
  "source": {
    "blob": "9922cac2f02e593d85c17d16a5b968b7e044efea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c4d2d62eb1a3e1d7bcf4847b015adcc2dc3430cfd109ddb2be189ac55ffde62",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0fe154b-9357-b384-e303-9071fa16d5dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_distribution (t : PrimitiveAdditiveTriple) (h16 : 16 ∣ t.a*t.b) :
    (16 ∣ t.a ∧ ¬ 2 ∣ t.b) ∨ (¬ 2 ∣ t.a ∧ 16 ∣ t.b) := by
  by_cases ha : 2 ∣ t.a
  · have hb : ¬ 2 ∣ t.b := by
      intro hb
      have h := Nat.dvd_gcd ha hb
      rw [t.coprime_ab.gcd_eq_one] at h
      norm_num at h
    have hc : Nat.Coprime 16 t.b := by
      rw [show (16 : ℕ)=2^4 by norm_num]
      exact (Nat.prime_two.coprime_iff_not_dvd.mpr hb).pow_left 4
    exact Or.inl ⟨hc.dvd_of_dvd_mul_right h16, hb⟩
  · have hc : Nat.Coprime 16 t.a := by
      rw [show (16 : ℕ)=2^4 by norm_num]
      exact (Nat.prime_two.coprime_iff_not_dvd.mpr ha).pow_left 4
    exact Or.inr ⟨ha, hc.dvd_of_dvd_mul_left h16⟩

/-- The precise domain on which the generic normalization has a unit coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9922cac2f02e593d85c17d16a5b968b7e044efea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
