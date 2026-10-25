# balanceR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31fc1b6b3afdb4aa6f4f3572fba2d34d4040b1d1ef26538545778d378541b62f",
  "kind": "def",
  "lexical_name": "balanceR",
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
  "slug": "balancer--7ed47a6f22a8425ecdf58ba0",
  "source": {
    "blob": "c6e3f915c87687bca4ee51bc70ce0d44f5f09270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ed47a6f22a8425ecdf58ba0ebc3a2a69ee144a7f367bbb9605894e101a9d416",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31fc1b6b3afdb4aa6f4f3572fba2d34d4040b1d1ef26538545778d378541b62f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def balanceR (l : Ordnode α) (x : α) (r : Ordnode α) : Ordnode α := by
  rcases id l with _ | ls
  · rcases id r with _ | ⟨rs, rl, rx, rr⟩
    · exact ι x
    · rcases id rr with _ | rrs
      · rcases rl with _ | ⟨_, _, rlx⟩
        · exact node 2 nil x r
        · exact node 3 (ι x) rlx ι rx
      · rcases id rl with _ | ⟨rls, rll, rlx, rlr⟩
        · exact node 3 (ι x) rx rr
        · exact
            if rls < ratio * rrs then node (rs + 1) (node (rls + 1) nil x rl) rx rr
            else
              node (rs + 1) (node (size rll + 1) nil x rll) rlx
                (node (size rlr + rrs + 1) rlr rx rr)
  · rcases id r with _ | ⟨rs, rl, rx, rr⟩
    · exact node (ls + 1) l x nil
    · refine if rs > delta * ls then ?_ else node (ls + rs + 1) l x r
      rcases id rr with _ | rrs
      · exact nil
      --should not happen
      rcases id rl with _ | ⟨rls, rll, rlx, rlr⟩
      · exact nil
      --should not happen
      exact
        if rls < ratio * rrs then node (ls + rs + 1) (node (ls + rls + 1) l x rl) rx rr
        else
          node (ls + rs + 1) (node (ls + size rll + 1) l x rll) rlx
            (node (size rlr + rrs + 1) rlr rx rr)

/-- **Internal use only**

O(1). Rebalance a tree which was previously balanced but has had one side change
by at most 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e3f915c87687bca4ee51bc70ce0d44f5f09270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
