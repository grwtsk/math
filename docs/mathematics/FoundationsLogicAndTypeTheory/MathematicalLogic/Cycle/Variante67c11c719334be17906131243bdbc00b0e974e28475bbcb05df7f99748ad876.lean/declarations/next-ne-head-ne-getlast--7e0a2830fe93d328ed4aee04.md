# next_ne_head_ne_getLast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0d41c8a-bf75-c017-4fdb-f9527a4e33c2",
  "kind": "theorem",
  "lexical_name": "next_ne_head_ne_getLast",
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
  "slug": "next-ne-head-ne-getlast--7e0a2830fe93d328ed4aee04",
  "source": {
    "blob": "ee8eee87bf42fb2c86029aad13c8ae21a84c0d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e0a2830fe93d328ed4aee04a17d048d4be4fe3b624db58191b210ab0076271f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0d41c8a-bf75-c017-4fdb-f9527a4e33c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_ne_head_ne_getLast (h : x ∈ l) (y : α) (h : x ∈ y :: l) (hy : x ≠ y)
    (hx : x ≠ getLast (y :: l) (cons_ne_nil _ _)) :
    next (y :: l) x h = next l x (by simpa [hy] using h) := by
  rw [next, next, nextOr_cons_of_ne _ _ _ _ hy, nextOr_eq_nextOr_of_mem_of_ne]
  · rwa [getLast_cons] at hx
    exact ne_nil_of_mem (by assumption)
  · rwa [getLast_cons] at hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8eee87bf42fb2c86029aad13c8ae21a84c0d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
