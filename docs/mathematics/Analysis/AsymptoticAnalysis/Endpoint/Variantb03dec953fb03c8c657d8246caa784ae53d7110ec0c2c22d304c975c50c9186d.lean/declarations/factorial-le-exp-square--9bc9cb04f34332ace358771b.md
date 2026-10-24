# factorial_le_exp_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90380766e45a7191c0639f06e1187d7c03319734",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1deadc63-b39c-87c1-ea8e-e14f0e66abb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03d7a0a9-dc73-f45e-f4e4-3f9f257e8822",
  "kind": "lemma",
  "lexical_name": "factorial_le_exp_square",
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
  "slug": "factorial-le-exp-square--9bc9cb04f34332ace358771b",
  "source": {
    "blob": "90380766e45a7191c0639f06e1187d7c03319734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 33,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bc9cb04f34332ace358771b961b0a141936fbe7a1e6735201fc8fd9dfa3a929",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03d7a0a9-dc73-f45e-f4e4-3f9f257e8822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorial_le_exp_square (m : ℕ) : (m.factorial : ℝ) ≤ Real.exp ((m : ℝ)^2) := by
  have hp : (m.factorial : ℝ) ≤ (m : ℝ)^m := by exact_mod_cast Nat.factorial_le_pow m
  have he : (m : ℝ) ≤ Real.exp (m : ℝ) := le_trans (by linarith) (Real.add_one_le_exp (m : ℝ))
  calc
    _ ≤ (m : ℝ)^m := hp
    _ ≤ (Real.exp (m : ℝ))^m := pow_le_pow_left₀ (by positivity) he m
    _ = Real.exp ((m : ℝ)^2) := by rw [← Real.exp_nat_mul]; congr 1; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90380766e45a7191c0639f06e1187d7c03319734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
