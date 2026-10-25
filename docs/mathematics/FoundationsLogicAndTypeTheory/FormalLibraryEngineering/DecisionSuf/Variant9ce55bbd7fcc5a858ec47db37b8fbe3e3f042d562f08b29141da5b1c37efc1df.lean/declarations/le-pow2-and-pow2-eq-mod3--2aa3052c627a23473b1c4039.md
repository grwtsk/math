# le_pow2_and_pow2_eq_mod3'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee52aba6-23c1-88e7-95bc-7bf6f223b9b4",
  "kind": "theorem",
  "lexical_name": "le_pow2_and_pow2_eq_mod3'",
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
  "slug": "le-pow2-and-pow2-eq-mod3--2aa3052c627a23473b1c4039",
  "source": {
    "blob": "c0c7b77bb2f35c5ad3cebc82646a5bc41320d520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant9ce55bbd7fcc5a858ec47db37b8fbe3e3f042d562f08b29141da5b1c37efc1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aa3052c627a23473b1c4039a1fc8a8abb6baec31150d33784fdf0a84cb6cb8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant9ce55bbd7fcc5a858ec47db37b8fbe3e3f042d562f08b29141da5b1c37efc1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee52aba6-23c1-88e7-95bc-7bf6f223b9b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem le_pow2_and_pow2_eq_mod3' (c : ℕ) (x : ℕ) (h : c = 1 ∨ c = 2) :
    ∃ m : ℕ, c + 3 * x ≤ 2 ^ m ∧ 2 ^ m % 3 = c % 3 := by
  induction x with
  | zero =>
    use c + 1
    rcases h with hc | hc <;> · rw [hc]; norm_num
  | succ k hk =>
    rcases hk with ⟨g, hkg, hgmod⟩
    by_cases hp : c + 3 * (k + 1) ≤ 2 ^ g
    · use g, hp, hgmod
    refine ⟨g + 2, ?_, ?_⟩
    · rw [mul_succ, ← add_assoc, pow_add]
      change c + 3 * k + 3 ≤ 2 ^ g * (1 + 3); rw [mul_add (2 ^ g) 1 3, mul_one]
      linarith [hkg, @Nat.one_le_two_pow g]
    · rw [pow_add, ← mul_one c]
      exact ModEq.mul hgmod rfl

/-- If `a` is 1 or 2 modulo 3, then exists `k` a power of 2 for which `a ≤ k` and `a ≡ k [MOD 3]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant9ce55bbd7fcc5a858ec47db37b8fbe3e3f042d562f08b29141da5b1c37efc1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant9ce55bbd7fcc5a858ec47db37b8fbe3e3f042d562f08b29141da5b1c37efc1df.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c7b77bb2f35c5ad3cebc82646a5bc41320d520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
