# bernsteinWeight_succ_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0dd571aa754fd22d191a589893ded77af7fbb055",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4ada353-977f-2f90-f985-f61ee1cb4985",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab7fa5ee-496f-f837-3205-0946d9019396",
  "kind": "lemma",
  "lexical_name": "bernsteinWeight_succ_succ",
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
  "slug": "bernsteinweight-succ-succ--5befc7293b6e5e67da06c79c",
  "source": {
    "blob": "0dd571aa754fd22d191a589893ded77af7fbb055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5befc7293b6e5e67da06c79ce6d8ef46dee9b283b1497a3de78d751185850e61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab7fa5ee-496f-f837-3205-0946d9019396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bernsteinWeight_succ_succ (n i : ℕ) (hi : i ≤ n) (t : ℝ) :
    bernsteinWeight (n + 1) (i + 1) t =
      t * bernsteinWeight n i t +
        (1 - t) * bernsteinWeight n (i + 1) t := by
  by_cases hin : i = n
  · subst i
    simp [bernsteinWeight]
    ring
  · have hlt : i < n := lt_of_le_of_ne hi hin
    rw [bernsteinWeight, bernsteinWeight, bernsteinWeight,
      Nat.choose_succ_succ']
    push_cast
    have hsub : n - i = (n - (i + 1)) + 1 := by omega
    rw [hsub]
    rw [pow_succ t i, pow_succ (1 - t) (n - (i + 1))]
    ring

/-- Closed Bernstein sum for a degree-`n` row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd571aa754fd22d191a589893ded77af7fbb055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
