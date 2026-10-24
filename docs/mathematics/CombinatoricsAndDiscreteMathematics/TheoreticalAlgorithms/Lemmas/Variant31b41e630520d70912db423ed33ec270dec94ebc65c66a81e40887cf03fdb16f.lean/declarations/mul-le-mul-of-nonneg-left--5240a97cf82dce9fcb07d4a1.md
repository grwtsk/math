# mul_le_mul_of_nonneg_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77d4c065923c1da7e37b64e844978916c207e263",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31b41e630520d70912db423ed33ec270dec94ebc65c66a81e40887cf03fdb16f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:759de1dc-e6c8-4353-b66a-3563d9bf2d0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e73ecaa-ae8e-055d-8f70-9ae936fd7878",
  "kind": "theorem",
  "lexical_name": "mul_le_mul_of_nonneg_left",
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
  "slug": "mul-le-mul-of-nonneg-left--5240a97cf82dce9fcb07d4a1",
  "source": {
    "blob": "77d4c065923c1da7e37b64e844978916c207e263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1175,
    "line": 1169,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant31b41e630520d70912db423ed33ec270dec94ebc65c66a81e40887cf03fdb16f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5240a97cf82dce9fcb07d4a1c7f67bf566c997886df3dbb934f1f77685e62797",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant31b41e630520d70912db423ed33ec270dec94ebc65c66a81e40887cf03fdb16f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e73ecaa-ae8e-055d-8f70-9ae936fd7878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1169–1175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_le_mul_of_nonneg_left {a b c : Int}
    (h₁ : a ≤ b) (h₂ : 0 ≤ c) : c * a ≤ c * b := by
  if hba : b ≤ a then rw [Int.le_antisymm hba h₁]; apply Int.le_refl else
  if hc0 : c ≤ 0 then simp [Int.le_antisymm hc0 h₂, Int.zero_mul] else
  exact Int.le_of_lt <| Int.mul_lt_mul_of_pos_left
    (Int.lt_iff_le_not_le.2 ⟨h₁, hba⟩) (Int.lt_iff_le_not_le.2 ⟨h₂, hc0⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant31b41e630520d70912db423ed33ec270dec94ebc65c66a81e40887cf03fdb16f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant31b41e630520d70912db423ed33ec270dec94ebc65c66a81e40887cf03fdb16f.lean#L1169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d4c065923c1da7e37b64e844978916c207e263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
