# minIdxOn_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30c21802-27a9-7735-360f-11b232489ae4",
  "kind": "theorem",
  "lexical_name": "minIdxOn_eq_zero_iff",
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
  "slug": "minidxon-eq-zero-iff--b25de5e1d7a7f0aea230ccc1",
  "source": {
    "blob": "0b88f7fa1af57c91a6cad52f061d6e0d652c69a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 327,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b25de5e1d7a7f0aea230ccc1f8c1c3b6cb4a35abb9433dbeae3b48409bed4c18",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30c21802-27a9-7735-360f-11b232489ae4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem minIdxOn_eq_zero_iff [LE β] [DecidableLE β] [IsLinearPreorder β]
    {xs : List α} {f : α → β} (h : xs ≠ []) :
    xs.minIdxOn f h = 0 ↔ ∀ x ∈ xs, f (xs.head h) ≤ f x := by
  rw [minIdxOn.eq_def]
  split
  rename_i y ys _
  simp only [mem_cons, head_cons, forall_eq_or_imp, le_refl, true_and]
  apply Iff.intro
  · intro h
    cases ys
    · simp
    · intro a ha
      refine le_trans ?_ (List.apply_minOn_le_of_mem ha)
      simpa [minIdxOn.go_eq] using h
  · intro h
    cases ys
    · simp [minIdxOn.go]
    · simpa [minIdxOn.go_eq, List.le_apply_minOn_iff] using h

section Append

/-!
The proof of {name}`List.minOn_append` uses associativity of {name}`minOn` and applies {name}`foldl_assoc`.
The proof of {name (scope := "Init.Data.List.MinMaxIdx")}`minIdxOn_append` is analogous, but the
aggregation operation, {name (scope := "Init.Data.List.MinMaxIdx")}`combineMinIdxOn`, depends on
the length of the lists to combine. After proving associativity of the aggregation operation,
the proof closely follows the proof of {name}`foldl_assoc`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b88f7fa1af57c91a6cad52f061d6e0d652c69a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
