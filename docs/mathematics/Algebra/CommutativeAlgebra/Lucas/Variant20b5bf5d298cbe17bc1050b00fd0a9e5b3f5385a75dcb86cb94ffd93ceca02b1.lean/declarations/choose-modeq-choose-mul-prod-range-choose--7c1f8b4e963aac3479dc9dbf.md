# choose_modEq_choose_mul_prod_range_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d67324b3-1f1d-bc5e-1a7a-eb765743b233",
  "kind": "theorem",
  "lexical_name": "choose_modEq_choose_mul_prod_range_choose",
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
  "slug": "choose-modeq-choose-mul-prod-range-choose--7c1f8b4e963aac3479dc9dbf",
  "source": {
    "blob": "bb77e75318e48a26211161174d695ba117d8c70b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c1f8b4e963aac3479dc9dbf3d9074a25e28878a4dc09e84655bced6275c4d6e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67324b3-1f1d-bc5e-1a7a-eb765743b233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_modEq_choose_mul_prod_range_choose (a : ℕ) :
    choose n k ≡ choose (n / p ^ a) (k / p ^ a) *
      ∏ i ∈ range a, choose (n / p ^ i % p) (k / p ^ i % p) [ZMOD p] :=
  match a with
  | Nat.zero => by simp
  | Nat.succ a => (choose_modEq_choose_mul_prod_range_choose a).trans <| by
    rw [prod_range_succ, cast_mul, ← mul_assoc, mul_right_comm]
    gcongr
    apply choose_modEq_choose_mod_mul_choose_div.trans
    simp_rw [pow_succ, Nat.div_div_eq_div_mul, mul_comm, Int.ModEq.refl]

/-- **Lucas's Theorem**: For primes `p`, `choose n k` is congruent to the product of
`choose (⌊n / p ^ i⌋ % p) (⌊k / p ^ i⌋ % p)` over `i` modulo `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb77e75318e48a26211161174d695ba117d8c70b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
