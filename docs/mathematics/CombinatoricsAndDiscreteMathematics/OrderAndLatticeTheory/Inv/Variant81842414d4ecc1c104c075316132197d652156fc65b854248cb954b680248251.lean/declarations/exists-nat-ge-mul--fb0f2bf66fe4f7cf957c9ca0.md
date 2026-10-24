# exists_nat_ge_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c9603cd-c9b8-4958-b3cf-7af15570faca",
  "kind": "lemma",
  "lexical_name": "exists_nat_ge_mul",
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
  "slug": "exists-nat-ge-mul--fb0f2bf66fe4f7cf957c9ca0",
  "source": {
    "blob": "bf78b8ab2e2b42c8e0d186bb189c53ef1cd1ebc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb0f2bf66fe4f7cf957c9ca06686f20f7b46b39974376d6f8f22fd8e8d6bba0d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c9603cd-c9b8-4958-b3cf-7af15570faca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_nat_ge_mul {a : EReal} (ha : a ≠ ⊤) (n : ℕ) :
    ∃ m : ℕ, a * n ≤ m :=
  match a with
  | ⊤ => ha.irrefl.rec
  | ⊥ => ⟨0, Nat.cast_zero (R := EReal) ▸ mul_nonpos_iff.2 (.inr ⟨bot_le, n.cast_nonneg'⟩)⟩
  | (a : ℝ) => by
    obtain ⟨m, an_m⟩ := exists_nat_ge (a * n)
    use m
    rwa [← coe_coe_eq_natCast n, ← coe_coe_eq_natCast m, ← EReal.coe_mul, EReal.coe_le_coe_iff]

/-! ### Min and Max -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf78b8ab2e2b42c8e0d186bb189c53ef1cd1ebc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
