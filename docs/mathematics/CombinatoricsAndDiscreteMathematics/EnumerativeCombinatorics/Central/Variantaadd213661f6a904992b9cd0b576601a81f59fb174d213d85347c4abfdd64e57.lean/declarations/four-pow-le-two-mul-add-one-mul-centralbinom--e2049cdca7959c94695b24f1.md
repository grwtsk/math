# four_pow_le_two_mul_add_one_mul_centralBinom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51cee52b66426f8eb3c302419b7cb28a596d7cb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52ffe7a3-c422-fb17-1b7a-f16110d3eb88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c737dc9-5bb3-859d-e4d2-7abf8452c31b",
  "kind": "theorem",
  "lexical_name": "four_pow_le_two_mul_add_one_mul_centralBinom",
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
  "slug": "four-pow-le-two-mul-add-one-mul-centralbinom--e2049cdca7959c94695b24f1",
  "source": {
    "blob": "51cee52b66426f8eb3c302419b7cb28a596d7cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2049cdca7959c94695b24f14492452a17ec8a0667a9d6202ffb16db68690896",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c737dc9-5bb3-859d-e4d2-7abf8452c31b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_pow_le_two_mul_add_one_mul_centralBinom (n : ℕ) :
    4 ^ n ≤ (2 * n + 1) * centralBinom n := by
  rcases n.eq_zero_or_pos with rfl | hn
  · simp [centralBinom]
  · refine (four_pow_le_two_mul_self_mul_centralBinom n hn).trans ?_
    gcongr
    exact le_add_right (2 * n) 1

@[deprecated four_pow_le_two_mul_add_one_mul_centralBinom (since := "2026-09-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51cee52b66426f8eb3c302419b7cb28a596d7cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
