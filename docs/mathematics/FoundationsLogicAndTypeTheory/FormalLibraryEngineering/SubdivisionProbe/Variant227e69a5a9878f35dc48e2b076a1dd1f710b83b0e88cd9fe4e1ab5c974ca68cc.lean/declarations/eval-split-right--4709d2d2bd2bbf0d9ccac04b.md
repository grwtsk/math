# eval_split_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bce11565-f5d9-2ca8-30bd-d8e8c3bd36a5",
  "kind": "theorem",
  "lexical_name": "eval_split_right",
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
  "slug": "eval-split-right--4709d2d2bd2bbf0d9ccac04b",
  "source": {
    "blob": "0ec355513dc2e1bb509bb9e7bd38c8c35c3f8178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variant227e69a5a9878f35dc48e2b076a1dd1f710b83b0e88cd9fe4e1ab5c974ca68cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4709d2d2bd2bbf0d9ccac04b99560b1c32ac884fb19364912d0f2f2c01dfebb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variant227e69a5a9878f35dc48e2b076a1dd1f710b83b0e88cd9fe4e1ab5c974ca68cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce11565-f5d9-2ca8-30bd-d8e8c3bd36a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_split_right (n : ℕ) (p : ControlRow M) (u t : ℚ) :
    eval n (splitRight n p u) t =
      eval n p (u + (1 - u) * t) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [eval]
      calc
        eval n (step t (splitRight (n + 1) p u)) t =
            eval n (splitRight n (step (u + (1 - u) * t) p) u) t := by
          apply eval_congr_prefix
          intro i hi
          exact step_splitRight_prefix n i hi t u p
        _ = eval n (step (u + (1 - u) * t) p)
              (u + (1 - u) * t) :=
          ih (step (u + (1 - u) * t) p)
        _ = eval (n + 1) p (u + (1 - u) * t) := rfl

end


end Surface.BZ1.SubdivisionProbe

#print axioms Surface.BZ1.SubdivisionProbe.eval_split_left
#print axioms Surface.BZ1.SubdivisionProbe.eval_split_right
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variant227e69a5a9878f35dc48e2b076a1dd1f710b83b0e88cd9fe4e1ab5c974ca68cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variant227e69a5a9878f35dc48e2b076a1dd1f710b83b0e88cd9fe4e1ab5c974ca68cc.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec355513dc2e1bb509bb9e7bd38c8c35c3f8178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
