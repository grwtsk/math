# iff_card_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98a1337f-d398-773f-24cc-8932fd02fca5",
  "kind": "theorem",
  "lexical_name": "iff_card_le_one",
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
  "slug": "iff-card-le-one--fc7e50d1211b6ae64e0ea934",
  "source": {
    "blob": "afd4bc8fc72ad3c204f81773e6c78e1b71f3b917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc7e50d1211b6ae64e0ea934879df30fd9ee7402500d012ad504c869c70adf07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98a1337f-d398-773f-24cc-8932fd02fca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_card_le_one [DecidableEq G] (ha0 : a0 ∈ A) (hb0 : b0 ∈ B) :
    UniqueMul A B a0 b0 ↔ #{p ∈ A ×ˢ B | p.1 * p.2 = a0 * b0} ≤ 1 := by
  simp_rw [card_le_one_iff, mem_filter, mem_product]
  refine ⟨fun h p1 p2 ⟨⟨ha1, hb1⟩, he1⟩ ⟨⟨ha2, hb2⟩, he2⟩ ↦ ?_, fun h a b ha hb he ↦ ?_⟩
  · have h1 := h ha1 hb1 he1; have h2 := h ha2 hb2 he2
    grind
  · exact Prod.ext_iff.1 (@h (a, b) (a0, b0) ⟨⟨ha, hb⟩, he⟩ ⟨⟨ha0, hb0⟩, rfl⟩)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd4bc8fc72ad3c204f81773e6c78e1b71f3b917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
