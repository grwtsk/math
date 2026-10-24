# higherMoment_le_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffacbf09d9bf9cc5878631527f9f45e8b8149e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96772159-64e1-d6be-9755-092f09b280b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab8d965e-818b-c8af-eadb-dfb2f9faa1b6",
  "kind": "theorem",
  "lexical_name": "higherMoment_le_product",
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
  "slug": "highermoment-le-product--a99948d3a36bd35ee96e0be9",
  "source": {
    "blob": "ffacbf09d9bf9cc5878631527f9f45e8b8149e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a99948d3a36bd35ee96e0be940a3bc8157730d74f971af58f84a3ad4fba1e479",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab8d965e-818b-c8af-eadb-dfb2f9faa1b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherMoment_le_product (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    higherMoment p k ≤ integerMoment p * exponentMoment k := by
  rw [higherMoment_factorization p k hk]
  have hratio : (p : ℝ) ^ (-(1 / 2 : ℝ)) ≤ geometricRatio := by
    apply Real.rpow_le_rpow_of_nonpos (by norm_num : (0 : ℝ) < 2)
      (by exact_mod_cast hp) (by norm_num)
  apply mul_le_mul_of_nonneg_left _ (integerMoment_nonneg p)
  exact mul_le_mul_of_nonneg_left
    (pow_le_pow_left₀ (Real.rpow_nonneg (Nat.cast_nonneg p) _) hratio _) (sq_nonneg _)

/-- Genuine product summability retains every integer base and exponent in the specified ranges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffacbf09d9bf9cc5878631527f9f45e8b8149e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
