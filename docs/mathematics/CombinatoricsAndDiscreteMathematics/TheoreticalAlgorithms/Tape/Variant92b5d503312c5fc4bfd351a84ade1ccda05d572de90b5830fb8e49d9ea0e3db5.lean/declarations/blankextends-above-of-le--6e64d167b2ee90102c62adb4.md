# BlankExtends.above_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00afbc00-ea81-62ab-8c64-01126be21bc1",
  "kind": "theorem",
  "lexical_name": "BlankExtends.above_of_le",
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
  "slug": "blankextends-above-of-le--6e64d167b2ee90102c62adb4",
  "source": {
    "blob": "c2bcf74c500c7697abb1fb74ac0723d5693e9f89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e64d167b2ee90102c62adb4fbde768583f41e353d8da02e4c6eddd752bb2f37",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00afbc00-ea81-62ab-8c64-01126be21bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BlankExtends.above_of_le {Γ} [Inhabited Γ] {l l₁ l₂ : List Γ} :
    BlankExtends l₁ l → BlankExtends l₂ l → l₁.length ≤ l₂.length → BlankExtends l₁ l₂ := by
  rintro ⟨i, rfl⟩ ⟨j, e⟩ h; use i - j
  refine List.append_cancel_right (e.symm.trans ?_)
  rw [List.append_assoc, ← List.replicate_add, Nat.sub_add_cancel]
  apply_fun List.length at e
  simp only [List.length_append, List.length_replicate] at e
  rwa [← Nat.add_le_add_iff_left, e, Nat.add_le_add_iff_right]

/-- `BlankRel` is the symmetric closure of `BlankExtends`, turning it into an equivalence
relation. Two lists are related by `BlankRel` if one extends the other by blanks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bcf74c500c7697abb1fb74ac0723d5693e9f89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
