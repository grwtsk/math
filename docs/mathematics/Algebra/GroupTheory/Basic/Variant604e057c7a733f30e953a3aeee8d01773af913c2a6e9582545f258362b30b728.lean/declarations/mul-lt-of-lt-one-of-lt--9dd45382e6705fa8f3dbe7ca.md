# mul_lt_of_lt_one_of_lt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bddf4ee6-60cf-91dd-415a-914ee022bf2e",
  "kind": "theorem",
  "lexical_name": "mul_lt_of_lt_one_of_lt'",
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
  "slug": "mul-lt-of-lt-one-of-lt--9dd45382e6705fa8f3dbe7ca",
  "source": {
    "blob": "1a15a1f624a2facf7fa3ed052e12db5594fc8e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 651,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant604e057c7a733f30e953a3aeee8d01773af913c2a6e9582545f258362b30b728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dd45382e6705fa8f3dbe7ca42644cacba75a886aa7b5d802560b6f48dca6962",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant604e057c7a733f30e953a3aeee8d01773af913c2a6e9582545f258362b30b728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bddf4ee6-60cf-91dd-415a-914ee022bf2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_lt_of_lt_one_of_lt' [MulRightMono α] (ha : a < 1) (hbc : b < c) : a * b < c :=
  mul_lt_of_le_one_of_lt ha.le hbc

/-- Assumes right covariance.
The lemma assuming left covariance is `Left.mul_le_one`. -/
@[to_additive /-- Assumes right covariance.
The lemma assuming left covariance is `Left.add_nonpos`. -/]
alias Right.mul_le_one := mul_le_of_le_one_of_le

/-- Assumes right covariance.
The lemma assuming left covariance is `Left.mul_lt_one_of_lt_of_le`. -/
@[to_additive Right.add_neg_of_neg_of_nonpos
/-- Assumes right covariance.
The lemma assuming left covariance is `Left.add_neg_of_neg_of_nonpos`. -/]
alias Right.mul_lt_one_of_lt_of_le := mul_lt_of_lt_one_of_le

/-- Assumes right covariance.
The lemma assuming left covariance is `Left.mul_lt_one_of_le_of_lt`. -/
@[to_additive Right.add_neg_of_nonpos_of_neg
/-- Assumes right covariance.
The lemma assuming left covariance is `Left.add_neg_of_nonpos_of_neg`. -/]
alias Right.mul_lt_one_of_le_of_lt := mul_lt_of_le_one_of_lt

/-- Assumes right covariance.
The lemma assuming left covariance is `Left.mul_lt_one`. -/
@[to_additive /-- Assumes right covariance.
The lemma assuming left covariance is `Left.add_neg`. -/]
alias Right.mul_lt_one := mul_lt_of_lt_one_of_lt

/-- Assumes right covariance.
The lemma assuming left covariance is `Left.mul_lt_one'`. -/
@[to_additive /-- Assumes right covariance.
The lemma assuming left covariance is `Left.add_neg'`. -/]
alias Right.mul_lt_one' := mul_lt_of_lt_one_of_lt'

/-! Lemmas of the form `1 ≤ a → b ≤ c → b ≤ a * c`, which assume right covariance. -/

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant604e057c7a733f30e953a3aeee8d01773af913c2a6e9582545f258362b30b728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant604e057c7a733f30e953a3aeee8d01773af913c2a6e9582545f258362b30b728.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a15a1f624a2facf7fa3ed052e12db5594fc8e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
