# intervalBoundedBy_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58d40cf8b4e8fe6710437fe57ce0dac4a499ed75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0398082-b830-f813-6474-27128cab1397",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:620492df-c985-db88-2810-98cf77c911c3",
  "kind": "theorem",
  "lexical_name": "intervalBoundedBy_spec",
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
  "slug": "intervalboundedby-spec--c81d916521a440cbb691cce1",
  "source": {
    "blob": "58d40cf8b4e8fe6710437fe57ce0dac4a499ed75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c81d916521a440cbb691cce1fd2a37a8e174deae94d9e1bc99267188c42f3f29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:620492df-c985-db88-2810-98cf77c911c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalBoundedBy_spec {x : ℝ} {I : IntervalDyadic} {eps : ℚ}
    (hx : x ∈ I) (hcheck : intervalBoundedBy I eps = true) :
    |x| ≤ (eps : ℝ) := by
  simp only [intervalBoundedBy, decide_eq_true_eq] at hcheck
  rw [abs_le]
  have hmem := IntervalDyadic.mem_toIntervalRat.mp hx
  simp only [IntervalRat.mem_def] at hmem
  constructor
  · calc -(eps : ℝ) ≤ (I.toIntervalRat.lo : ℝ) := by exact_mod_cast hcheck.1
      _ ≤ x := hmem.1
  · calc x ≤ (I.toIntervalRat.hi : ℝ) := hmem.2
      _ ≤ eps := by exact_mod_cast hcheck.2

/--
  **The Distillation Certifier**

  Returns `true` if the student network is proven to be within `eps`
  of the teacher network for all inputs in the domain.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d40cf8b4e8fe6710437fe57ce0dac4a499ed75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
