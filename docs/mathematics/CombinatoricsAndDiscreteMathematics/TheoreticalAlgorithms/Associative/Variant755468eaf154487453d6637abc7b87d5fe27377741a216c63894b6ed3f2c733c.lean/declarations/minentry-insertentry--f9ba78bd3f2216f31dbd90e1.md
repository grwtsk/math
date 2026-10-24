# minEntry?_insertEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 8381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e41816c8-0e6b-80ed-3a78-4c988e953bc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c85a0921-03f0-19f7-9387-ee7870308bb4",
  "kind": "theorem",
  "lexical_name": "minEntry?_insertEntry",
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
  "slug": "minentry-insertentry--f9ba78bd3f2216f31dbd90e1",
  "source": {
    "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8402,
    "line": 8381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ba78bd3f2216f31dbd90e11476f64b5a6e7d7ed51aa885b42eba5760c1b24d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c85a0921-03f0-19f7-9387-ee7870308bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8381–8402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minEntry?_insertEntry [Ord α] [TransOrd α] [BEq α] [LawfulBEqOrd α] {k : α} {v : β k}
    {l : List ((a : α) × β a)} (hl : DistinctKeys l) :
    minEntry? (insertEntry k v l) =
      some (match minEntry? l with
        | none => ⟨k, v⟩
        | some w => if compare k w.fst |>.isLE then ⟨k, v⟩ else w) := by
  simp only [insertEntry]
  cases h : containsKey k l
  · simp only [cond_false, minEntry?_cons, Option.some.injEq]
    rfl
  · rw [cond_true, minEntry?_replaceEntry hl, Option.map_eq_some_iff]
    have := isSome_minEntry?_of_contains ‹_›
    simp only [Option.isSome_iff_exists] at this
    obtain ⟨a, ha⟩ := this
    refine ⟨a, ha, ?_⟩
    simp only [ha]
    simp only [minEntry?_eq_some_iff _ hl] at ha
    replace ha := ha.2 k ‹_›
    cases hc : (compare k a.fst).isLE
    · simp_all [OrientedCmp.gt_iff_lt, ← compare_eq_iff_beq]
    · simp_all [OrientedCmp.isLE_antisymm ha hc, ← compare_eq_iff_beq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean#L8381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbf8b921dbaa720483377d3c4810f060d70f676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
