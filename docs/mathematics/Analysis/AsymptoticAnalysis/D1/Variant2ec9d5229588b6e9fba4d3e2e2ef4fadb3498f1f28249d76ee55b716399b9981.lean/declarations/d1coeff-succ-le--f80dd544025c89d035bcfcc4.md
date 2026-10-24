# D1coeff_succ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e457cd652649fe9d66c7b561b2fa80e2a99b145",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:235f9dbd-31e0-14a9-08c7-255d975dbace",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1dc874d-4299-6d24-b40a-63055ad6dcad",
  "kind": "theorem",
  "lexical_name": "D1coeff_succ_le",
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
  "slug": "d1coeff-succ-le--f80dd544025c89d035bcfcc4",
  "source": {
    "blob": "9e457cd652649fe9d66c7b561b2fa80e2a99b145",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f80dd544025c89d035bcfcc48fea01a3b10b9f74682a3426285775c7c9620975",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1dc874d-4299-6d24-b40a-63055ad6dcad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem D1coeff_succ_le (k : ℕ) (hk : 9 ≤ k) : D1coeff (k + 1) ≤ D1coeff k * (20 / 231) := by
  rw [D1coeff_succ]
  apply mul_le_mul_of_nonneg_left _ (D1coeff_nonneg k)
  have hk' : (9 : ℝ) ≤ k := by exact_mod_cast hk
  have hpos : (0 : ℝ) < (k + 2) * (2 * k + 3) := by positivity
  rw [div_le_div_iff₀ hpos (by norm_num)]
  nlinarith

/-- geometric domination of the tail coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e457cd652649fe9d66c7b561b2fa80e2a99b145` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
