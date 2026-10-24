# graph_triple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cb7730b-c4d8-de92-7ad9-b149295fb079",
  "kind": "lemma",
  "lexical_name": "graph_triple",
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
  "slug": "graph-triple--e7b2d3dfec77cae2fabfc1f8",
  "source": {
    "blob": "990339480c60dbed03373ea60c0904a6a9f2b8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7b2d3dfec77cae2fabfc1f86aada76be9252a5aaf3aef736f94304c889fc4d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cb7730b-c4d8-de92-7ad9-b149295fb079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma graph_triple ⦃x y z⦄ :
  (graph t).Adj x y → (graph t).Adj x z → (graph t).Adj y z → ∃ a b c,
    ({in₀ a, in₁ b, in₂ c} : Finset (α ⊕ β ⊕ γ)) = {x, y, z} ∧ (graph t).Adj (in₀ a) (in₁ b) ∧
      (graph t).Adj (in₀ a) (in₂ c) ∧ (graph t).Adj (in₁ b) (in₂ c) := by
  rintro (_ | _ | _) (_ | _ | _) (_ | _ | _) <;>
    refine ⟨_, _, _, by ext; simp only [Finset.mem_insert, Finset.mem_singleton]; try tauto,
      ?_, ?_, ?_⟩ <;> constructor <;> assumption

/-- The map that turns a triangle index into an explicit triangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `990339480c60dbed03373ea60c0904a6a9f2b8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
