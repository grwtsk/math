# signed_two_density_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b64085ce8ec7dc6fe8bbe5788518cffd1589c26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4643ca74-d360-0ba3-5bb2-516bf95571e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d90e509a-5b1b-d8d4-b134-f22be4d7422d",
  "kind": "theorem",
  "lexical_name": "signed_two_density_abs_le",
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
  "slug": "signed-two-density-abs-le--29b2834ea2bd570ee3219f7d",
  "source": {
    "blob": "0b64085ce8ec7dc6fe8bbe5788518cffd1589c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 188,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b2834ea2bd570ee3219f7d16304b3ea7ff6f4dfb33ea4b72ff76da7694eca1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d90e509a-5b1b-d8d4-b134-f22be4d7422d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_two_density_abs_le (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D| ≤
      (1/16:ℝ) * |SquarefreeCount.finiteSquarefreeDensity h D| +
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  calc
    _ ≤ |twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| +
        |SquarefreeCount.finiteSquarefreeDensity h D -
          Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
          twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| := by
      convert abs_add_le
        (twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D)
        (SquarefreeCount.finiteSquarefreeDensity h D -
          Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
          twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D) using 1
      congr 1
      ring
    _ ≤ _ := by
      rw [abs_mul, abs_of_nonneg twoDensityFactor_bounds.1]
      exact add_le_add (mul_le_mul_of_nonneg_right twoDensityFactor_bounds.2 (abs_nonneg _))
        (signed_two_density_error_le h D hh hh1 hD)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b64085ce8ec7dc6fe8bbe5788518cffd1589c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
