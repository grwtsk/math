# comp_isRotated_sublist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7909d671-572a-e134-e780-37ce9df3fda1",
  "kind": "theorem",
  "lexical_name": "comp_isRotated_sublist",
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
  "slug": "comp-isrotated-sublist--c852606bf4fe73320215c736",
  "source": {
    "blob": "7ca874a44bd729b059378df8f7e215aec8cee0d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 504,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant222ec0bea51eed728f1618a03ddbb8b26ad2da396f62d3cb4c1813975d7a3fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c852606bf4fe73320215c736d968d85d54590c717ba9c0ab6bda0745a831daeb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant222ec0bea51eed728f1618a03ddbb8b26ad2da396f62d3cb4c1813975d7a3fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7909d671-572a-e134-e780-37ce9df3fda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem comp_isRotated_sublist :
    Relation.Comp (IsRotated (α := α)) Sublist = Relation.Comp Sublist IsRotated := by
  ext
  refine ⟨fun ⟨L₁, hLr, hL⟩ => ?_, fun ⟨L₂, hL, hLr⟩ => ?_⟩ <;>
    obtain ⟨n, hn, rfl⟩ := isRotated_iff_mod.mp hLr
  · obtain ⟨L₂L, L₂R, rfl, hL₂L, hL₂R⟩ := append_sublist_iff.mp (rotate_eq_drop_append_take hn ▸ hL)
    exact ⟨L₂R ++ L₂L, by simpa using hL₂R.append hL₂L, isRotated_append⟩
  · obtain ⟨lL, lR, rfl, hL, hR⟩ := sublist_append_iff.mp <| take_append_drop n L₂ ▸ hL
    refine ⟨lR ++ lL, isRotated_append.symm, ?_⟩
    simpa [rotate_eq_drop_append_take hn] using hR.append hL

/-- List of all cyclic permutations of `l`.
The `cyclicPermutations` of a nonempty list `l` will always contain `List.length l` elements.
This implies that under certain conditions, there are duplicates in `List.cyclicPermutations l`.
The `n`th entry is equal to `l.rotate n`, proven in `List.get_cyclicPermutations`.
The proof that every cyclic permutant of `l` is in the list is `List.mem_cyclicPermutations_iff`.

```
     cyclicPermutations [1, 2, 3, 2, 4] =
       [[1, 2, 3, 2, 4], [2, 3, 2, 4, 1], [3, 2, 4, 1, 2],
        [2, 4, 1, 2, 3], [4, 1, 2, 3, 2]]
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant222ec0bea51eed728f1618a03ddbb8b26ad2da396f62d3cb4c1813975d7a3fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant222ec0bea51eed728f1618a03ddbb8b26ad2da396f62d3cb4c1813975d7a3fd7.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ca874a44bd729b059378df8f7e215aec8cee0d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
