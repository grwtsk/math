# descPochhammer_eval_coe_nat_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59de8abd-3903-7d13-23b1-60ada2fdae65",
  "kind": "theorem",
  "lexical_name": "descPochhammer_eval_coe_nat_of_lt",
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
  "slug": "descpochhammer-eval-coe-nat-of-lt--ed38753e23182efebf40653a",
  "source": {
    "blob": "b3e72f1bfd6c728bee050e7cda463456adced908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 428,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed38753e23182efebf40653aee12f74637a9b764cf35b2190eccdba8703aa1a1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59de8abd-3903-7d13-23b1-60ada2fdae65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descPochhammer_eval_coe_nat_of_lt {k n : ℕ} (h : k < n) :
    (descPochhammer R n).eval (k : R) = 0 := by
  rw [descPochhammer_eval_eq_ascPochhammer, sub_add_eq_add_sub,
    ← Nat.cast_add_one, ← neg_sub, ← Nat.cast_sub h]
  exact ascPochhammer_eval_neg_coe_nat_of_lt (Nat.sub_lt_of_pos_le k.succ_pos h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3e72f1bfd6c728bee050e7cda463456adced908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
