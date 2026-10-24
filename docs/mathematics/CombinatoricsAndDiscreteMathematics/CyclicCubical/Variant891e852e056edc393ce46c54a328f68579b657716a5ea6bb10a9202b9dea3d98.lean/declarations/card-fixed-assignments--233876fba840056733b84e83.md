# card_fixed_assignments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1270cd064fde10dc0711ee520fe8d865ee809077",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe0c1a56-b16e-8f29-9da9-1d1c40e6cfc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ec98b35-143f-d6a7-2373-177466fb67e4",
  "kind": "theorem",
  "lexical_name": "card_fixed_assignments",
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
  "slug": "card-fixed-assignments--233876fba840056733b84e83",
  "source": {
    "blob": "1270cd064fde10dc0711ee520fe8d865ee809077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:233876fba840056733b84e83754109f5561a427f27548d3e5c60eb91e79e5cd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ec98b35-143f-d6a7-2373-177466fb67e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem card_fixed_assignments
    (n k : Nat) (free : {s : Finset (Fin n) // s.card = k}) :
    Fintype.card ({i : Fin n // i ∉ free.1} → Bool) = 2 ^ (n - k) := by
  classical
  rw [Fintype.card_fun]
  simp only [Fintype.card_bool, Fintype.card_subtype_compl, Fintype.card_fin,
    Fintype.card_coe, free.2]

/-- Exact cardinality of the address representation of `k`-faces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1270cd064fde10dc0711ee520fe8d865ee809077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
