# integral_bernoulliFun_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cce54cd55bc6ade3069543573ed3cd07784c1fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e7dbf51-cdd8-7f75-3563-2dfbb5683919",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4cc9f3b-753a-1661-8fcc-540a979c9b75",
  "kind": "theorem",
  "lexical_name": "integral_bernoulliFun_eq_zero",
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
  "slug": "integral-bernoullifun-eq-zero--76f5f129e16b1390c916ebd1",
  "source": {
    "blob": "9cce54cd55bc6ade3069543573ed3cd07784c1fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 85,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f5f129e16b1390c916ebd193ad89a3125ebc51491cbeb5a9f6b7ea2c845643",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4cc9f3b-753a-1661-8fcc-540a979c9b75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_bernoulliFun_eq_zero {k : ℕ} (hk : k ≠ 0) :
    ∫ x : ℝ in (0)..1, bernoulliFun k x = 0 := by
  rw [integral_eq_sub_of_hasDerivAt (fun x _ => antideriv_bernoulliFun k x)
      ((Polynomial.continuous _).intervalIntegrable _ _)]
  rw [bernoulliFun_eval_one]
  split_ifs with h
  · exfalso; exact hk (Nat.succ_inj'.mp h)
  · simp
#align integral_bernoulli_fun_eq_zero integral_bernoulliFun_eq_zero

end BernoulliFunProps

section BernoulliFourierCoeffs

/-! Compute the Fourier coefficients of the Bernoulli functions via integration by parts. -/


/-- The `n`-th Fourier coefficient of the `k`-th Bernoulli function on the interval `[0, 1]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cce54cd55bc6ade3069543573ed3cd07784c1fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
