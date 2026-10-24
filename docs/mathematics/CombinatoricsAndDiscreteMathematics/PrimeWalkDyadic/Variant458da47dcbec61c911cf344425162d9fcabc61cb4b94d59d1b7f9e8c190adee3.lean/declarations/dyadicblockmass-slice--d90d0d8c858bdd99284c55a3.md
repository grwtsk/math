# dyadicBlockMass_slice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a173235a2713200db525d98f6819a8662a476100",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32fd8b5d-8f82-dcbf-d164-85b0b5ca0842",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a98e0b4f-9d62-26ff-e6a6-c10036172921",
  "kind": "theorem",
  "lexical_name": "dyadicBlockMass_slice",
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
  "slug": "dyadicblockmass-slice--d90d0d8c858bdd99284c55a3",
  "source": {
    "blob": "a173235a2713200db525d98f6819a8662a476100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d90d0d8c858bdd99284c55a3916bb6dd2b73395f962a37349656bdab2885b18b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a98e0b4f-9d62-26ff-e6a6-c10036172921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicBlockMass_slice (j : ℕ) (observable : ℕ → ℝ) :
    dyadicBlockMass j (discreteDyadicSlice j observable) =
      dyadicBlockMass j observable := by
  classical
  apply Finset.sum_congr rfl
  intro k hk
  exact discreteDyadicSlice_eq_of_mem j observable k hk

/-- Block mass is additive across two consecutive dyadic scales. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a173235a2713200db525d98f6819a8662a476100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
