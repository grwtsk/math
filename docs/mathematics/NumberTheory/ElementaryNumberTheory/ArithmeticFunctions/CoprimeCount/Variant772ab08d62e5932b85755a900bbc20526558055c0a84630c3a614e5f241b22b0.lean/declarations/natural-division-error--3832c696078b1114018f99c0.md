# natural_division_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0eb571df40a8e091bf9bb31cb8ee0689712fd4d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac883b81-2dca-3422-0cb9-b17766b07d34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96143405-2b88-a7e1-a91c-baf0703b2212",
  "kind": "theorem",
  "lexical_name": "natural_division_error",
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
  "slug": "natural-division-error--3832c696078b1114018f99c0",
  "source": {
    "blob": "0eb571df40a8e091bf9bb31cb8ee0689712fd4d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 77,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3832c696078b1114018f99c0d671df612ea9b32e6a4d8808f60580d2bce5c628",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96143405-2b88-a7e1-a91c-baf0703b2212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natural_division_error (j e : ℕ) (he : 1 ≤ e) :
    |((j / e : ℕ) : ℝ) - (j : ℝ) / (e : ℝ)| ≤ 1 := by
  have he0 : (0 : ℝ) < e := by exact_mod_cast (show 0 < e by omega)
  have hx : 0 ≤ (j : ℝ) / (e : ℝ) := div_nonneg (Nat.cast_nonneg j) he0.le
  have hl := Nat.floor_le hx
  have hu := Nat.lt_floor_add_one ((j : ℝ) / (e : ℝ))
  rw [Nat.floor_div_eq_div] at hl hu
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The error in the finite coprime density is bounded by the actual divisor count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb571df40a8e091bf9bb31cb8ee0689712fd4d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
