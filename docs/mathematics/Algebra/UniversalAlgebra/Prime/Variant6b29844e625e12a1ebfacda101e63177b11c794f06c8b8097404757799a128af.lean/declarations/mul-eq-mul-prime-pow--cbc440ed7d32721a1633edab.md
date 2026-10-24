# mul_eq_mul_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30dd94a9b2f587a1776857366b53ac5e68dd0ddb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b29844e625e12a1ebfacda101e63177b11c794f06c8b8097404757799a128af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02008398-afdf-782e-779e-4fe994636458",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c5036dc-5383-6384-b448-7f390c86513a",
  "kind": "theorem",
  "lexical_name": "mul_eq_mul_prime_pow",
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
  "slug": "mul-eq-mul-prime-pow--cbc440ed7d32721a1633edab",
  "source": {
    "blob": "30dd94a9b2f587a1776857366b53ac5e68dd0ddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Prime/Variant6b29844e625e12a1ebfacda101e63177b11c794f06c8b8097404757799a128af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc440ed7d32721a1633edab2d247f7b3b7ec603c69acb74ef48a641289ff9fe",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Prime/Variant6b29844e625e12a1ebfacda101e63177b11c794f06c8b8097404757799a128af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c5036dc-5383-6384-b448-7f390c86513a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_mul_prime_pow {x y a p : R} {n : ℕ} (hp : Prime p) (hx : x * y = a * p ^ n) :
    ∃ (i j : ℕ) (b c : R), i + j = n ∧ a = b * c ∧ x = b * p ^ i ∧ y = c * p ^ j := by
  rcases mul_eq_mul_prime_prod (fun _ _ ↦ hp)
    (show x * y = a * (range n).prod fun _ ↦ p by simpa) with
      ⟨t, u, b, c, htus, htu, rfl, rfl, rfl⟩
  exact ⟨t.card, u.card, b, c, by rw [← card_disjoint_union htu, htus, card_range], by simp⟩
#align mul_eq_mul_prime_pow mul_eq_mul_prime_pow

end CancelCommMonoidWithZero

section CommRing

variable {α : Type*} [CommRing α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Prime/Variant6b29844e625e12a1ebfacda101e63177b11c794f06c8b8097404757799a128af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Prime/Variant6b29844e625e12a1ebfacda101e63177b11c794f06c8b8097404757799a128af.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30dd94a9b2f587a1776857366b53ac5e68dd0ddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
