# factorial_le_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40d6c2b5c194440265719b8c55a4c76d8cec7f86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08675052c5857f6ab4c732aa921dbbe95ec9ae82089550b6e3f6863e327a6b94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1098f82d-d2e5-63f7-7eb2-a902604be239",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8a7a78e-b74e-7cd0-8e7f-3c07fd071747",
  "kind": "lemma",
  "lexical_name": "factorial_le_pow",
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
  "slug": "factorial-le-pow--ff3a8cf0c7ba2cf78f066015",
  "source": {
    "blob": "40d6c2b5c194440265719b8c55a4c76d8cec7f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant08675052c5857f6ab4c732aa921dbbe95ec9ae82089550b6e3f6863e327a6b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff3a8cf0c7ba2cf78f066015e833fda00911ba0e5e65eecdb8a0208c6fb9ca43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant08675052c5857f6ab4c732aa921dbbe95ec9ae82089550b6e3f6863e327a6b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8a7a78e-b74e-7cd0-8e7f-3c07fd071747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorial_le_pow : ∀ n, n ! ≤ n ^ n
  | 0 => le_refl _
  | n + 1 =>
    calc
      _ ≤ (n + 1) * n ^ n := Nat.mul_le_mul_left _ n.factorial_le_pow
      _ ≤ (n + 1) * (n + 1) ^ n := Nat.mul_le_mul_left _ (Nat.pow_le_pow_left n.le_succ _)
      _ = _ := by rw [pow_succ']

end Factorial

/-! ### Ascending and descending factorials -/


section AscFactorial

/-- `n.ascFactorial k = n (n + 1) ⋯ (n + k - 1)`. This is closely related to `ascPochhammer`, but
much less general. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant08675052c5857f6ab4c732aa921dbbe95ec9ae82089550b6e3f6863e327a6b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant08675052c5857f6ab4c732aa921dbbe95ec9ae82089550b6e3f6863e327a6b94.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d6c2b5c194440265719b8c55a4c76d8cec7f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
