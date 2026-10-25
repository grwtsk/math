# balanceL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbf1942ae8df9dbeefb6d3363ec0ede52f0bdc7d81f49e09ce8714522a08fa99",
  "kind": "def",
  "lexical_name": "balanceL",
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
  "slug": "balancel--e8ec4aa6fdebc4599fb123af",
  "source": {
    "blob": "e5077ba96c8432ca19b8470d57244f8970a48c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8ec4aa6fdebc4599fb123af5ccaf8d6a8bd5a504ae2d3ef1c6187427adb0a4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbf1942ae8df9dbeefb6d3363ec0ede52f0bdc7d81f49e09ce8714522a08fa99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def balanceL (l : Ordnode α) (x : α) (r : Ordnode α) : Ordnode α := by
  rcases id r with _ | rs
  · rcases id l with _ | ⟨ls, ll, lx, lr⟩
    · exact ι x
    · rcases id ll with _ | lls
      · rcases lr with _ | ⟨_, _, lrx⟩
        · exact node 2 l x nil
        · exact node 3 (ι lx) lrx ι x
      · rcases id lr with _ | ⟨lrs, lrl, lrx, lrr⟩
        · exact node 3 ll lx ι x
        · exact
            if lrs < ratio * lls then node (ls + 1) ll lx (node (lrs + 1) lr x nil)
            else
              node (ls + 1) (node (lls + size lrl + 1) ll lx lrl) lrx
                (node (size lrr + 1) lrr x nil)
  · rcases id l with _ | ⟨ls, ll, lx, lr⟩
    · exact node (rs + 1) nil x r
    · refine if ls > delta * rs then ?_ else node (ls + rs + 1) l x r
      rcases id ll with _ | lls
      · exact nil
      --should not happen
      rcases id lr with _ | ⟨lrs, lrl, lrx, lrr⟩
      · exact nil
      --should not happen
      exact
        if lrs < ratio * lls then node (ls + rs + 1) ll lx (node (rs + lrs + 1) lr x r)
        else
          node (ls + rs + 1) (node (lls + size lrl + 1) ll lx lrl) lrx
            (node (size lrr + rs + 1) lrr x r)

/-- **Internal use only**

O(1). Rebalance a tree which was previously balanced but has had its right
side grow by 1, or its left side shrink by 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5077ba96c8432ca19b8470d57244f8970a48c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
