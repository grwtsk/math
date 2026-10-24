# upper_row_product_threshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d1e036b0011ce4e60915e97fd10cc2bfd679d06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ab7dffd8c81576f1498235c7dae421099bf8b71437dbba2a4d37f6d03aaef1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40717b00-c4d1-21de-3d2b-ec702afc9530",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9930c3bf-39be-76aa-a07b-756209610076",
  "kind": "theorem",
  "lexical_name": "upper_row_product_threshold",
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
  "slug": "upper-row-product-threshold--d53192b4bf038a93f0944059",
  "source": {
    "blob": "5d1e036b0011ce4e60915e97fd10cc2bfd679d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 66,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant6ab7dffd8c81576f1498235c7dae421099bf8b71437dbba2a4d37f6d03aaef1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d53192b4bf038a93f09440590321f9ff5697576ba9b17da7ad574195350eae8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant6ab7dffd8c81576f1498235c7dae421099bf8b71437dbba2a4d37f6d03aaef1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9930c3bf-39be-76aa-a07b-756209610076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_row_product_threshold (A : ℝ) (i n : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hn : ⌊Real.exp A⌋₊ < n) :
    Real.exp (2 * A) ≤ 2 * ((i * n : ℕ) : ℝ) := by
  let N := ⌊Real.exp A⌋₊
  have hi2 : N + 1 ≤ 2 * i := by dsimp [N]; omega
  have hn1 : N + 1 ≤ n := by dsimp [N]; omega
  have hprod : (N + 1) ^ 2 ≤ 2 * (i * n) := by
    nlinarith [Nat.mul_le_mul hi2 hn1]
  have hp : ((N : ℝ) + 1) ^ 2 ≤ 2 * ((i * n : ℕ) : ℝ) := by
    exact_mod_cast hprod
  have hf : Real.exp A < (N : ℝ) + 1 := Nat.lt_floor_add_one (Real.exp A)
  have hx : Real.exp (2 * A) = (Real.exp A) ^ 2 := by
    rw [two_mul, Real.exp_add, pow_two]
  rw [hx]
  nlinarith [Real.exp_pos A]

/-- The actual source sampling kernel vanishes outside the complete upper row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant6ab7dffd8c81576f1498235c7dae421099bf8b71437dbba2a4d37f6d03aaef1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant6ab7dffd8c81576f1498235c7dae421099bf8b71437dbba2a4d37f6d03aaef1b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1e036b0011ce4e60915e97fd10cc2bfd679d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
