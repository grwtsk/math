# Ioo_inr_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d28712eadd31fccd49e0f2e4234197d6f77afa6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88844f34-e1fd-e8af-1a2a-19ec8cdf0a31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ade8322-8f0e-06eb-0491-bd79f6a32a55",
  "kind": "theorem",
  "lexical_name": "Ioo_inr_inr",
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
  "slug": "ioo-inr-inr--6050fe49e1a5d121641e3a8b",
  "source": {
    "blob": "d28712eadd31fccd49e0f2e4234197d6f77afa6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 277,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6050fe49e1a5d121641e3a8b4ad5a5f2ff389fadfd23d913eebaab8259aa4821",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ade8322-8f0e-06eb-0491-bd79f6a32a55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ioo_inr_inr : Ioo (inr b₁ : α ⊕ β) (inr b₂) = (Ioo b₁ b₂).map Embedding.inr :=
  rfl

end Disjoint

/-! ### Lexicographical sum of orders -/

namespace Lex
variable [Preorder α] [Preorder β] [OrderTop α] [OrderBot β] [LocallyFiniteOrder α]
  [LocallyFiniteOrder β]

/-- Throwaway tactic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d28712eadd31fccd49e0f2e4234197d6f77afa6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
