# condKernel_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a15f4a1c9244f398f42d5162075d447bc491e7e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:baececc1-d8b1-e015-9d0e-01cf06c9a0d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26d00d24-c45d-9274-7dac-c8a8094b1345",
  "kind": "lemma",
  "lexical_name": "condKernel_const",
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
  "slug": "condkernel-const--505c462cc7598ef66d273475",
  "source": {
    "blob": "a15f4a1c9244f398f42d5162075d447bc491e7e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 156,
    "path": "GRWTSK/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:505c462cc7598ef66d273475c04088200c1861c0cb754c730b41e352bdb007f2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26d00d24-c45d-9274-7dac-c8a8094b1345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condKernel_const [CountableOrCountablyGenerated α β] (ρ : Measure (β × Ω)) [IsFiniteMeasure ρ]
    (a : α) :
    (fun b ↦ Kernel.condKernel (Kernel.const α ρ) (a, b)) =ᵐ[ρ.fst] ρ.condKernel := by
  have h := Kernel.condKernel_apply_eq_condKernel (Kernel.const α ρ) a
  simp_rw [Kernel.fst_apply, Kernel.const_apply] at h
  filter_upwards [h] with b hb using hb

end KernelAndMeasure

section Kernel

/-! ### Uniqueness of `Kernel.condKernel`

The conditional kernel is unique almost everywhere. -/

/-- A finite kernel which satisfies the disintegration property is almost everywhere equal to the
disintegration kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a15f4a1c9244f398f42d5162075d447bc491e7e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
