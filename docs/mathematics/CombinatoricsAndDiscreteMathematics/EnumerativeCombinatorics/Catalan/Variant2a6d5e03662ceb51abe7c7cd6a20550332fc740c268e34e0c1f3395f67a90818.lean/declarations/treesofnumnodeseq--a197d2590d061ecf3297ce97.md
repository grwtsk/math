# treesOfNumNodesEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a61bdd32f2710ce949a973ffa7a7effd6f113538d63e7d0a8cd8429f04c7e59",
  "kind": "def",
  "lexical_name": "treesOfNumNodesEq",
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
  "slug": "treesofnumnodeseq--a197d2590d061ecf3297ce97",
  "source": {
    "blob": "b03f344485ce6e5660769c2a9edd5bbd2191279c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a197d2590d061ecf3297ce97a097a913dc8dd7447473ffef0ef2629c81b78b1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a61bdd32f2710ce949a973ffa7a7effd6f113538d63e7d0a8cd8429f04c7e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def treesOfNumNodesEq : ℕ → Finset (Tree Unit)
  | 0 => {nil}
  | n + 1 =>
    (Finset.Nat.antidiagonal n).attach.biUnion fun ijh =>
      -- Porting note: `unusedHavesSuffices` linter is not happy with this. Commented out.
      -- have := Nat.lt_succ_of_le (fst_le ijh.2)
      -- have := Nat.lt_succ_of_le (snd_le ijh.2)
      pairwiseNode (treesOfNumNodesEq ijh.1.1) (treesOfNumNodesEq ijh.1.2)
  -- Porting note: Add this to satisfy the linter.
  decreasing_by
      simp_wf
      try exact Nat.lt_succ_of_le (fst_le ijh.2)
      try exact Nat.lt_succ_of_le (snd_le ijh.2)
#align tree.trees_of_num_nodes_eq Tree.treesOfNumNodesEq

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03f344485ce6e5660769c2a9edd5bbd2191279c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
