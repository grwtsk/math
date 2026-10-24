# gcd_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ed6a769-0d42-22ed-080b-536b717e6629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09fd691a-731b-525d-2e3a-681a3969f496",
  "kind": "theorem",
  "lexical_name": "gcd_dvd",
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
  "slug": "gcd-dvd--6b1bd7e2f328c90bfb2243ae",
  "source": {
    "blob": "a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 148,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b1bd7e2f328c90bfb2243aef74f8903e4e868eb579f934268a46ad465fa0d92",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09fd691a-731b-525d-2e3a-681a3969f496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_dvd : (Int.gcd x y : ℤ) ∣ z := by
  by_cases h0 : Int.gcd x y = 0
  · have hx : x = 0 := by
      apply Int.natAbs_eq_zero.mp
      apply Nat.eq_zero_of_gcd_eq_zero_left h0
    have hy : y = 0 := by
      apply Int.natAbs_eq_zero.mp
      apply Nat.eq_zero_of_gcd_eq_zero_right h0
    have hz : z = 0 := by
      simpa only [PythagoreanTriple, hx, hy, add_zero, zero_eq_mul, mul_zero,
        or_self_iff] using h
    simp only [hz, dvd_zero]
  obtain ⟨k, x0, y0, _, h2, rfl, rfl⟩ :
    ∃ (k : ℕ) (x0 y0 : _), 0 < k ∧ Int.gcd x0 y0 = 1 ∧ x = x0 * k ∧ y = y0 * k :=
    Int.exists_gcd_one' (Nat.pos_of_ne_zero h0)
  rw [Int.gcd_mul_right, h2, Int.natAbs_natCast, one_mul]
  rw [← Int.pow_dvd_pow_iff two_ne_zero, sq z, ← h.eq]
  rw [(by ring : x0 * k * (x0 * k) + y0 * k * (y0 * k) = (k : ℤ) ^ 2 * (x0 * x0 + y0 * y0))]
  exact dvd_mul_right _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
