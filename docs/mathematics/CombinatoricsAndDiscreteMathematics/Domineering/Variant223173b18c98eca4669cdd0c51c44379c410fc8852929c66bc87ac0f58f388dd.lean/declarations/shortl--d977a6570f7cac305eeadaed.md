# shortL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99063993fedcdcb503a73a1285154ea27c45382f79c8455eebd8b90352cbbc64",
  "kind": "instance",
  "lexical_name": "shortL",
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
  "slug": "shortl--d977a6570f7cac305eeadaed",
  "source": {
    "blob": "5bef60478a17c0bf4b9e50fbde43b96b53b8cf8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Domineering/Variant223173b18c98eca4669cdd0c51c44379c410fc8852929c66bc87ac0f58f388dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d977a6570f7cac305eeadaed24d71e6686edee578120fce326df38d0c4b465c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Domineering/Variant223173b18c98eca4669cdd0c51c44379c410fc8852929c66bc87ac0f58f388dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99063993fedcdcb503a73a1285154ea27c45382f79c8455eebd8b90352cbbc64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance shortL : Short domineering.L := by dsimp [domineering.L]; infer_instance

-- The VM can play small games successfully:
-- #eval decide (domineering.one ≈ 1)
-- #eval decide (domineering.L + domineering.L ≈ 1)
-- The following no longer works since Lean 3.29, since definitions by well-founded
-- recursion no longer reduce definitionally.
-- We can check that `Decidable` instances reduce as expected,
-- and so our implementation of domineering is computable.
-- run_cmd tactic.whnf `(by apply_instance : Decidable (domineering.one ≤ 1)) >>= tactic.trace
-- dec_trivial can handle most of the dictionary of small games described in [conway2001]
-- example : domineering.one ≈ 1 := by decide
-- example : domineering.L + domineering.L ≈ 1 := by decide
-- example : domineering.L ≈ PGame.ofLists [0] [1] := by decide
-- example : (domineering ([(0,0), (0,1), (0,2), (0,3)].toFinset) ≈ 2) := by decide
-- example : (domineering ([(0,0), (0,1), (1,0), (1,1)].toFinset) ≈ PGame.ofLists [1] [-1]) :=
--   by decide
-- The 3x3 grid is doable, but takes a minute...
-- example :
--   (domineering ([(0,0), (0,1), (0,2), (1,0), (1,1), (1,2), (2,0), (2,1), (2,2)].toFinset) ≈
--     PGame.ofLists [1] [-1]) := by decide
-- The 5x5 grid is actually 0, but brute-forcing this is too challenging even for the VM.
-- #eval decide (domineering ([
--   (0,0), (0,1), (0,2), (0,3), (0,4),
--   (1,0), (1,1), (1,2), (1,3), (1,4),
--   (2,0), (2,1), (2,2), (2,3), (2,4),
--   (3,0), (3,1), (3,2), (3,3), (3,4),
--   (4,0), (4,1), (4,2), (4,3), (4,4)
--   ].toFinset) ≈ 0)
end PGame

end SetTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Domineering/Variant223173b18c98eca4669cdd0c51c44379c410fc8852929c66bc87ac0f58f388dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Domineering/Variant223173b18c98eca4669cdd0c51c44379c410fc8852929c66bc87ac0f58f388dd.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bef60478a17c0bf4b9e50fbde43b96b53b8cf8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
