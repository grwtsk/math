# sum_unitVec_mul_slice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b795090a-6fdb-d216-44e4-3755461ed4b4",
  "kind": "theorem",
  "lexical_name": "sum_unitVec_mul_slice",
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
  "slug": "sum-unitvec-mul-slice--f51475ad27654e9a8ea74dac",
  "source": {
    "blob": "b3f28556d75481af55d82b50692184b6f44a68f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f51475ad27654e9a8ea74dac486b67105808e47f2df94e250eb9f8c8431382c5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b795090a-6fdb-d216-44e4-3755461ed4b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_unitVec_mul_slice [Semiring α] (x : Holor α (d :: ds)) :
    (∑ i ∈ (Finset.range d).attach,
        unitVec d i ⊗ slice x i (Nat.succ_le_of_lt (Finset.mem_range.1 i.prop))) =
      x := by
  apply slice_eq _ _ _
  ext i hid
  rw [← slice_sum]
  simp only [slice_unitVec_mul hid]
  rw [Finset.sum_eq_single (Subtype.mk i <| Finset.mem_range.2 hid)]
  · simp
  · intro (b : { x // x ∈ Finset.range d }) (_ : b ∈ (Finset.range d).attach) (hbi : b ≠ ⟨i, _⟩)
    have hbi' : i ≠ b := by simpa only [Ne, Subtype.ext_iff, Subtype.coe_mk] using hbi.symm
    simp [hbi']
  · intro (hid' : Subtype.mk i _ ∉ Finset.attach (Finset.range d))
    exfalso
    exact absurd (Finset.mem_attach _ _) hid'

-- CP rank
/-- `CPRankMax1 x` means `x` has CP rank at most 1, that is,
  it is the tensor product of 1-dimensional holors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f28556d75481af55d82b50692184b6f44a68f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
