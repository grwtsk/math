# prime_dvd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:705850ea-a434-3d73-2ed4-15e41239cb1b",
  "kind": "theorem",
  "lexical_name": "prime_dvd_iff",
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
  "slug": "prime-dvd-iff--9f3c5de5500f235ee779e8e9",
  "source": {
    "blob": "728e97ca9cdd31b64e83aa34c364577f81e4d104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 270,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f3c5de5500f235ee779e8e9b1dd73581c32fe9fccdbf1dd49c1f26c4c771dac",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:705850ea-a434-3d73-2ed4-15e41239cb1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_dvd_iff (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    p ∣ minimalDiscriminant t ↔ p ∣ t.a * t.b * t.c ∧
      ¬ (p = 2 ∧ Descends t ∧ (t.a * t.b * t.c).factorization 2 = 4) := by
  have hp : p.Prime := Fact.out
  rw [hp.dvd_iff_one_le_factorization (Nat.ne_of_gt (minimalDiscriminant_pos t)),
    hp.dvd_iff_one_le_factorization (Nat.ne_of_gt t.product_pos)]
  by_cases hp2 : p = 2
  · subst p
    have hb := two_depth_balance t
    have hlo := source_depth_pos t
    by_cases hd : Descends t <;> simp [hd] at hb ⊢ <;> omega
  · rw [odd_depth t p hp2]
    simp only [hp2, false_and, not_false_eq_true, and_true]
    omega

/-- Exact complete finite support; no bounded prime test set occurs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `728e97ca9cdd31b64e83aa34c364577f81e4d104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
