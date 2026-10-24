# noncommPiCoprod_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33d4b60a80c3869367fa33d7a328c388142cf70b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:643f7487-8661-9001-85bc-315740e76846",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c89a2701-ebe2-e752-4427-89d4aaf4984d",
  "kind": "theorem",
  "lexical_name": "noncommPiCoprod_range",
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
  "slug": "noncommpicoprod-range--592e9fdd5c46bc0a493ee1d5",
  "source": {
    "blob": "33d4b60a80c3869367fa33d7a328c388142cf70b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 213,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:592e9fdd5c46bc0a493ee1d59e641ebc8a2f2de2bc98285314f4011e257bdf98",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c89a2701-ebe2-e752-4427-89d4aaf4984d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommPiCoprod_range [Fintype ι]
    {hcomm : Pairwise fun i j : ι => ∀ (x : H i) (y : H j), Commute (ϕ i x) (ϕ j y)} :
    (noncommPiCoprod ϕ hcomm).range = ⨆ i : ι, (ϕ i).range := by
  letI := Classical.decEq ι
  apply le_antisymm
  · rintro x ⟨f, rfl⟩
    refine Subgroup.noncommProd_mem _ (fun _ _ _ _ h => hcomm h _ _) ?_
    intro i _hi
    apply Subgroup.mem_sSup_of_mem
    · use i
    simp
  · refine iSup_le ?_
    rintro i x ⟨y, rfl⟩
    exact ⟨Pi.mulSingle i y, noncommPiCoprod_mulSingle _ _ _⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d4b60a80c3869367fa33d7a328c388142cf70b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
