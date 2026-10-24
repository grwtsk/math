# exists_tagged_le_isHenstock_isSubordinate_iUnion_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c5cf865-2f32-1f31-f717-bf2f0bf8cb2e",
  "kind": "theorem",
  "lexical_name": "exists_tagged_le_isHenstock_isSubordinate_iUnion_eq",
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
  "slug": "exists-tagged-le-ishenstock-issubordinate-iunion-eq--1a9e17302d95297c69c2d6fe",
  "source": {
    "blob": "50dd7e9f464531059c5262f996a368c40fccaafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a9e17302d95297c69c2d6feac588d57e45c60a781ae80412cf77a862643e16b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c5cf865-2f32-1f31-f717-bf2f0bf8cb2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_tagged_le_isHenstock_isSubordinate_iUnion_eq {I : Box ι} (r : (ι → ℝ) → Ioi (0 : ℝ))
    (π : Prepartition I) :
    ∃ π' : TaggedPrepartition I, π'.toPrepartition ≤ π ∧ π'.IsHenstock ∧ π'.IsSubordinate r ∧
      π'.distortion = π.distortion ∧ π'.iUnion = π.iUnion := by
  have := fun J => Box.exists_taggedPartition_isHenstock_isSubordinate_homothetic J r
  choose! πi πip πiH πir _ πid using this
  refine ⟨π.biUnionTagged πi, biUnion_le _ _, isHenstock_biUnionTagged.2 fun J _ => πiH J,
    isSubordinate_biUnionTagged.2 fun J _ => πir J, ?_, π.iUnion_biUnion_partition fun J _ => πip J⟩
  rw [distortion_biUnionTagged]
  exact sup_congr rfl fun J _ => πid J

/-- Given a prepartition `π` of a box `I` and a function `r : ℝⁿ → (0, ∞)`, `π.toSubordinate r`
is a tagged partition `π'` such that

* each box of `π'` is included in some box of `π`;
* `π'` is a Henstock partition;
* `π'` is subordinate to `r`;
* `π'` covers exactly the same part of `I` as `π`;
* the distortion of `π'` is equal to the distortion of `π`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50dd7e9f464531059c5262f996a368c40fccaafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
