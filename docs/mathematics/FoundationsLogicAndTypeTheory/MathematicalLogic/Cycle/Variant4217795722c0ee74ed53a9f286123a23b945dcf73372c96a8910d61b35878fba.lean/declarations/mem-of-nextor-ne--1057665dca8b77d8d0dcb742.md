# mem_of_nextOr_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed1b757fa1db5152c59aa927bd428a59e41bf1c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d56e63ee-a63b-0e38-824a-aa456cb43dba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f3dadc2-7903-be36-8f07-84385a98ad4c",
  "kind": "theorem",
  "lexical_name": "mem_of_nextOr_ne",
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
  "slug": "mem-of-nextor-ne--1057665dca8b77d8d0dcb742",
  "source": {
    "blob": "ed1b757fa1db5152c59aa927bd428a59e41bf1c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1057665dca8b77d8d0dcb742d3953d67606d514b8aee08f0ff4b989970f1247f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f3dadc2-7903-be36-8f07-84385a98ad4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_nextOr_ne {xs : List α} {x d : α} (h : nextOr xs x d ≠ d) : x ∈ xs := by
  induction xs with
  | nil => simp at h
  | cons y ys IH => ?_
  rcases ys with - | ⟨z, zs⟩
  · simp at h
  · by_cases hx : x = y
    · simp [hx]
    · rw [nextOr_cons_of_ne _ _ _ _ hx] at h
      simpa [hx] using IH h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1b757fa1db5152c59aa927bd428a59e41bf1c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
