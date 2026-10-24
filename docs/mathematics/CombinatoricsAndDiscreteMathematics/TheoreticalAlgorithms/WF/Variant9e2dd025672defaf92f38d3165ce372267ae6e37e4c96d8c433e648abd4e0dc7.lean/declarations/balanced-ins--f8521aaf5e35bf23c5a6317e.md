# Balanced.ins

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eb29704-2676-f5aa-0056-07b8888ff4b2",
  "kind": "theorem",
  "lexical_name": "Balanced.ins",
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
  "slug": "balanced-ins--f8521aaf5e35bf23c5a6317e",
  "source": {
    "blob": "29d21194930e69cf52f5b0da3817339a11f23816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8521aaf5e35bf23c5a6317e3b28994ee1d5d3dba90a094781d742fb2128d2bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eb29704-2676-f5aa-0056-07b8888ff4b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Balanced.ins (cmp v) {t : RBNode α}
    (h : t.Balanced c n) : (ins cmp v t).RedRed (t.isRed = red) n := by
  induction h with
  | nil => exact .balanced (.red .nil .nil)
  | @red a n b x hl hr ihl ihr =>
    unfold ins; split
    · match ins cmp v a, ihl with
      | _, .balanced .nil => exact .balanced (.red .nil hr)
      | _, .balanced (.red ha hb) => exact .redred rfl (.red ha hb) hr
      | _, .balanced (.black ha hb) => exact .balanced (.red (.black ha hb) hr)
      | _, .redred h .. => cases hl <;> cases h
    · match ins cmp v b, ihr with
      | _, .balanced .nil => exact .balanced (.red hl .nil)
      | _, .balanced (.red ha hb) => exact .redred rfl hl (.red ha hb)
      | _, .balanced (.black ha hb) => exact .balanced (.red hl (.black ha hb))
      | _, .redred h .. => cases hr <;> cases h
    · exact .balanced (.red hl hr)
  | @black a ca n b cb x hl hr ihl ihr =>
    unfold ins; split
    · exact have ⟨c, h⟩ := ihl.balance1 hr; .balanced h
    · exact have ⟨c, h⟩ := ihr.balance2 hl; .balanced h
    · exact .balanced (.black hl hr)

/--
The `insert` function is balanced if the input is balanced.
(We lose track of both the color and the black-height of the result,
so this is only suitable for use on the root of the tree.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d21194930e69cf52f5b0da3817339a11f23816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
