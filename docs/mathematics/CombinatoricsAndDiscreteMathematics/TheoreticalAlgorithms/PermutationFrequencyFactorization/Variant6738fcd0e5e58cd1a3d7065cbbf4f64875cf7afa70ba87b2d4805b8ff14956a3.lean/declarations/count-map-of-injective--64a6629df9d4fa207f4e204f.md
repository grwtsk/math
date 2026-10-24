# count_map_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f241c939-10c8-1ce7-ad1d-3755476c4a25",
  "kind": "theorem",
  "lexical_name": "count_map_of_injective",
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
  "slug": "count-map-of-injective--64a6629df9d4fa207f4e204f",
  "source": {
    "blob": "29f5e1505c6a0370c32d09d5404f8985e19f3f35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 321,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64a6629df9d4fa207f4e204fd0f3e89543549187657d84d1e871d4c15626b628",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f241c939-10c8-1ce7-ad1d-3755476c4a25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_map_of_injective {α β : Type u}
    [DecidableEq α] [DecidableEq β]
    (f : α → β)
    (hinj : ∀ x y, f x = f y → x = y)
    (l : List α) (a : α) :
    (l.map f).count (f a) = l.count a := by
  induction l with
  | nil => rfl
  | cons x t ih =>
      simp only [List.map_cons, List.count_cons, ih]
      by_cases h : x = a
      · simp [h, beq_iff_eq]
      · have hf : f x ≠ f a := fun hb => h (hinj x a hb)
        simp [h, hf, beq_iff_eq]

end ListTools

/-- Every element of `Fin n` occurs exactly once in `List.finRange n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f5e1505c6a0370c32d09d5404f8985e19f3f35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
