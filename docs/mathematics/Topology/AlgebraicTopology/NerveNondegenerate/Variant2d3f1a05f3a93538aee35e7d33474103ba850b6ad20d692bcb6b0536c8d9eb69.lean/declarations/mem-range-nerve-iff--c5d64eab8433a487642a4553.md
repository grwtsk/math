# mem_range_nerve_σ_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecaa80b3f4cc15a8adf2a655ce9e82d5e82f01a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b5aa171-4412-389c-0f5f-da4e7b175088",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6653f9cb-e4b0-4594-0b00-84a5b4ff8d86",
  "kind": "lemma",
  "lexical_name": "mem_range_nerve_σ_iff",
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
  "slug": "mem-range-nerve-iff--c5d64eab8433a487642a4553",
  "source": {
    "blob": "ecaa80b3f4cc15a8adf2a655ce9e82d5e82f01a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 33,
    "path": "GRWTSK/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5d64eab8433a487642a4553a286623602188978d07d31645f6fb994bc5352b8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6653f9cb-e4b0-4594-0b00-84a5b4ff8d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_range_nerve_σ_iff (s : (nerve X) _⦋n + 1⦌) (i : Fin (n + 1)) :
    s ∈ Set.range ((nerve X).σ i) ↔
      s.obj i.castSucc = s.obj i.succ := by
  constructor
  · rintro ⟨s, rfl⟩
    simp [-nerve_obj, nerve.σ_obj]
  · intro h
    refine ⟨(nerve X).δ i.castSucc s, ?_⟩
    ext j
    rw [nerve.σ_obj, nerve.δ_obj]
    by_cases h₁ : i.castSucc < j
    · obtain ⟨j, rfl⟩ := Fin.eq_succ_of_ne_zero (Fin.ne_zero_of_lt h₁)
      rw [Fin.predAbove_of_castSucc_lt _ _ h₁, Fin.pred_succ,
        Fin.succAbove_of_le_castSucc _ _ (Fin.le_castSucc_iff.2 h₁)]
    · simp only [not_lt] at h₁
      grind [→ Fin.succAbove_of_castSucc_lt,
        → Fin.predAbove_of_le_castSucc, Fin.castSucc_castPred, Fin.castPred_castSucc,
        Fin.succAbove_castSucc_self, → LE.le.lt_or_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecaa80b3f4cc15a8adf2a655ce9e82d5e82f01a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
