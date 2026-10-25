# nextOr_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7e041b1-2a9b-6528-58d8-cb0e9df91d6c",
  "kind": "theorem",
  "lexical_name": "nextOr_mem",
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
  "slug": "nextor-mem--a050834c575cfd6e8a4d496c",
  "source": {
    "blob": "ee8eee87bf42fb2c86029aad13c8ae21a84c0d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a050834c575cfd6e8a4d496c251742071412bc4c5f9c0ce0bc5b67e3e5afb43c",
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

Occurrence: `result:d7e041b1-2a9b-6528-58d8-cb0e9df91d6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nextOr_mem {xs : List α} {x d : α} (hd : d ∈ xs) : nextOr xs x d ∈ xs := by
  revert hd
  suffices ∀ xs' : List α, (∀ x ∈ xs, x ∈ xs') → d ∈ xs' → nextOr xs x d ∈ xs' by
    exact this xs fun _ => id
  intro xs' hxs' hd
  induction' xs with y ys ih
  · exact hd
  rcases ys with - | ⟨z, zs⟩
  · exact hd
  rw [nextOr]
  split_ifs with h
  · exact hxs' _ (mem_cons_of_mem _ mem_cons_self)
  · exact ih fun _ h => hxs' _ (mem_cons_of_mem _ h)

/-- Given an element `x : α` of `l : List α` such that `x ∈ l`, get the next
element of `l`. This works from head to tail, (including a check for last element)
so it will match on first hit, ignoring later duplicates.

For example:
* `next [1, 2, 3] 2 _ = 3`
* `next [1, 2, 3] 3 _ = 1`
* `next [1, 2, 3, 2, 4] 2 _ = 3`
* `next [1, 2, 3, 2] 2 _ = 3`
* `next [1, 1, 2, 3, 2] 1 _ = 1`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8eee87bf42fb2c86029aad13c8ae21a84c0d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
