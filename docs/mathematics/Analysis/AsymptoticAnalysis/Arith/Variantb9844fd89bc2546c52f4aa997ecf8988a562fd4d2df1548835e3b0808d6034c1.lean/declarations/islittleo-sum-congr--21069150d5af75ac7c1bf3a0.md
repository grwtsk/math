# IsLittleO.sum_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68b06462e1d675361ceb72bcd491b608942cd99a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8e15997-3cf3-b9e7-ecc0-af67b6ef2ff8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:619084e5-588f-0ea4-b7bc-998e689b3016",
  "kind": "theorem",
  "lexical_name": "IsLittleO.sum_congr",
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
  "slug": "islittleo-sum-congr--21069150d5af75ac7c1bf3a0",
  "source": {
    "blob": "68b06462e1d675361ceb72bcd491b608942cd99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 422,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21069150d5af75ac7c1bf3a0a1566a4350821a02dfdf1c94bc6aeb90c7d4d400",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:619084e5-588f-0ea4-b7bc-998e689b3016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLittleO.sum_congr (hAB : ∀ i ∈ s, A i =o[l] B i) :
    (fun H => ∑ i ∈ s, A i H) =o[l] fun H => ∑ i ∈ s, ‖B i H‖ := by
  induction s using Finset.cons_induction with
  | empty => simp [isLittleO_zero]
  | cons i s his h =>
  simp_rw [Finset.sum_cons]
  calc (fun H => A i H + ∑ j ∈ s, A j H)
      =o[l] fun H => ‖B i H‖ + ‖∑ j ∈ s, ‖B j H‖‖ :=
          (hAB i (by simp)).add_add (h (fun j hj => hAB j (by simp [hj])))
    _ =ᶠ[l] fun H => ‖B i H‖ + ∑ j ∈ s, ‖B j H‖ := by
        refine Eventually.of_forall fun H ↦ congr_arg (‖B i H‖ + ·) ?_
        exact Real.norm_of_nonneg (Finset.sum_nonneg fun _ _ => norm_nonneg _)

/-- Similar to `IsBigOWith.sum_congr` except the index set can change in the sum. This requires the
constant in `hAB` to be independent of the index `i` and also the big-O relationship to "kick in"
at the same point along the running variable. Hence the `⊤` in `⊤ ×ˢ l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b06462e1d675361ceb72bcd491b608942cd99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
