# four_squares_plus_one_modular_solution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da330bf5103593c1b0574082337913229e285b3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c8a9ad7-9e59-2fa8-3758-ad89405ad7b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ca22e4c-7442-fc2c-e4ef-75f7b3098e83",
  "kind": "theorem",
  "lexical_name": "four_squares_plus_one_modular_solution",
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
  "slug": "four-squares-plus-one-modular-solution--c80839b6a01dfc1188c8813c",
  "source": {
    "blob": "da330bf5103593c1b0574082337913229e285b3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c80839b6a01dfc1188c8813c49d82efcf393fedd6a89e912bd08fd1bcbb71229",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ca22e4c-7442-fc2c-e4ef-75f7b3098e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_squares_plus_one_modular_solution (modulus : ℕ) (positive : 0 < modulus) :
    ∃ a b c d : ℤ, (modulus : ℤ) ∣ a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 + 1 := by
  obtain ⟨a, b, c, d, hsquares⟩ := Nat.sum_four_squares (modulus - 1)
  refine ⟨a, b, c, d, ?_⟩
  have hnat : a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 + 1 = modulus := by omega
  have hint : (a : ℤ) ^ 2 + (b : ℤ) ^ 2 + (c : ℤ) ^ 2 + (d : ℤ) ^ 2 + 1 =
      (modulus : ℤ) := by exact_mod_cast hnat
  rw [hint]

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da330bf5103593c1b0574082337913229e285b3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
