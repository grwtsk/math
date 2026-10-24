# induction_on_symbols

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "594b5c8265590e6db6302cf33220b326b96a15ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0123242-80e7-0e19-f2c9-1538a686583b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0895527-3cd0-58ac-8a7c-2992a2f56d01",
  "kind": "theorem",
  "lexical_name": "induction_on_symbols",
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
  "slug": "induction-on-symbols--7193ceaaf516bec9b7a1c60f",
  "source": {
    "blob": "594b5c8265590e6db6302cf33220b326b96a15ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7193ceaaf516bec9b7a1c60f5c194fb6e7d8230b23935a98d356a1c7787fd9a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0895527-3cd0-58ac-8a7c-2992a2f56d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_symbols
    {P : FormalMathString α → Prop}
    (h_empty : P empty)
    (h_cons :
      ∀ (a : α) (s : FormalMathString α), P s → P ⟨a :: s.symbols⟩)
    (s : FormalMathString α) :
    P s := by
  cases s with
  | mk xs =>
      induction xs with
      | nil =>
          exact h_empty
      | cons a rest ih =>
          exact h_cons a ⟨rest⟩ ih

end FormalMathString

/--
A finite macro dictionary. Each macro has a numeric identifier and an
expansion word over the primitive alphabet.

`entropyWeight` is carried as finite data only. No analytic entropy theorem is
asserted at this layer.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594b5c8265590e6db6302cf33220b326b96a15ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
