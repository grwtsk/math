# mem_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0798e2bc689e48c350c5e53f39fd62604f4af40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 953,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a43b67f7ac85defc2990be3327f5ebcfd5fbe7fec5907943def0d355ee9f19b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8d87a81-3552-43cd-6a39-ba3e3943728c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b27975b3-c4dd-a1d0-bd73-bc0aced5ec33",
  "kind": "theorem",
  "lexical_name": "mem_insert",
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
  "slug": "mem-insert--14e8bb3fb3adcfc91315586b",
  "source": {
    "blob": "c0798e2bc689e48c350c5e53f39fd62604f4af40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 960,
    "line": 953,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6a43b67f7ac85defc2990be3327f5ebcfd5fbe7fec5907943def0d355ee9f19b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14e8bb3fb3adcfc91315586b7507bf372403a4d80bae0dc78769b187bd6e78ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6a43b67f7ac85defc2990be3327f5ebcfd5fbe7fec5907943def0d355ee9f19b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b27975b3-c4dd-a1d0-bd73-bc0aced5ec33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 953–960.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_insert [Std.TransCmp (α := α) cmp] {t : RBSet α cmp} :
    v' ∈ t.insert v ↔ v' ∈ t ∨ cmp v v' = .eq := by
  refine ⟨fun h => ?_, fun | .inl h => mem_insert_of_mem _ h | .inr h => mem_insert_of_eq _ h⟩
  let ⟨_, h₁, h₂⟩ := mem_iff_mem_toList.1 h
  match mem_toList_insert.1 h₁ with
  | .inl ⟨h₃, _⟩ => exact .inl <| mem_iff_mem_toList.2 ⟨_, h₃, h₂⟩
  | .inr rfl => exact .inr <| Std.OrientedCmp.eq_comm.1 h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6a43b67f7ac85defc2990be3327f5ebcfd5fbe7fec5907943def0d355ee9f19b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6a43b67f7ac85defc2990be3327f5ebcfd5fbe7fec5907943def0d355ee9f19b.lean#L953).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0798e2bc689e48c350c5e53f39fd62604f4af40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
