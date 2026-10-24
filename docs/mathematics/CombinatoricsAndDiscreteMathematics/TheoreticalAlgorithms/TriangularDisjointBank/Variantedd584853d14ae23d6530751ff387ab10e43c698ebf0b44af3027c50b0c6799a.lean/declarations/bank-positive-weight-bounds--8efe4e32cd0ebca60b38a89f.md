# bank_positive_weight_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61c72abe-34e2-d9c3-e3ae-f978c2956592",
  "kind": "theorem",
  "lexical_name": "bank_positive_weight_bounds",
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
  "slug": "bank-positive-weight-bounds--8efe4e32cd0ebca60b38a89f",
  "source": {
    "blob": "02850395c7e69ef6305258649fb714c09902adc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variantedd584853d14ae23d6530751ff387ab10e43c698ebf0b44af3027c50b0c6799a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8efe4e32cd0ebca60b38a89f84308776efdaa76a18eee2c5bba652588810583e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variantedd584853d14ae23d6530751ff387ab10e43c698ebf0b44af3027c50b0c6799a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61c72abe-34e2-d9c3-e3ae-f978c2956592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bank_positive_weight_bounds (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    (n : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    1 - a ≤ bankWeight M a n ∧ bankWeight M a n ≤ 1 + a := by
  have h := bank_adjacent_height_bounds M hM n
  have hl : (height M n : ℝ) ≤ height M (n - 1) + 1 := by exact_mod_cast h.1
  have hr : (height M (n - 1) : ℝ) ≤ height M n + 1 := by exact_mod_cast h.2
  have hp := mul_le_mul_of_nonneg_left hl ha
  have hm := mul_le_mul_of_nonneg_left hr ha
  unfold bankWeight bankStorage
  constructor <;> nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variantedd584853d14ae23d6530751ff387ab10e43c698ebf0b44af3027c50b0c6799a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variantedd584853d14ae23d6530751ff387ab10e43c698ebf0b44af3027c50b0c6799a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02850395c7e69ef6305258649fb714c09902adc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
