# prime_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eedfb9ee-e854-7ac8-f44e-b86b23bfc0e8",
  "kind": "theorem",
  "lexical_name": "prime_def",
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
  "slug": "prime-def--6f141604d7c3c3b9be968fdf",
  "source": {
    "blob": "58d71c96ff5b0e857ad4ee2536b546eda472bc57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variantca36b165601d5ad2eedf586611e19ae35ea26a803f21ea3a74c31ae43940336c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f141604d7c3c3b9be968fdf32a44e4cbf93da2cf9be181ca26e4cba34263ad5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variantca36b165601d5ad2eedf586611e19ae35ea26a803f21ea3a74c31ae43940336c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eedfb9ee-e854-7ac8-f44e-b86b23bfc0e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_def {p : ℕ} : Prime p ↔ 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p := by
  refine ⟨fun h => ⟨h.two_le, h.eq_one_or_self_of_dvd⟩, fun h => ?_⟩
  have h1 := Nat.one_lt_two.trans_le h.1
  refine ⟨mt Nat.isUnit_iff.mp h1.ne', ?_⟩
  rintro a b rfl
  simp only [Nat.isUnit_iff]
  refine (h.2 a <| dvd_mul_right ..).imp_right fun hab ↦ ?_
  rw [← mul_right_inj' (Nat.ne_zero_of_lt h1), ← hab, ← hab, mul_one]

@[deprecated (since := "2024-11-19")]
alias prime_def_lt'' := prime_def

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variantca36b165601d5ad2eedf586611e19ae35ea26a803f21ea3a74c31ae43940336c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variantca36b165601d5ad2eedf586611e19ae35ea26a803f21ea3a74c31ae43940336c.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d71c96ff5b0e857ad4ee2536b546eda472bc57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
