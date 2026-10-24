# mk_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "276e6dcfcb94e989031eecbb4418cc2d3e75acc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afdcb613-c6c7-5140-8134-331cb6c2c1f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7d0e7e8-2076-9e41-91d0-7f74955cb6be",
  "kind": "theorem",
  "lexical_name": "mk_eq_iff",
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
  "slug": "mk-eq-iff--44a99cd6bf4c4c7dad0a4ef9",
  "source": {
    "blob": "276e6dcfcb94e989031eecbb4418cc2d3e75acc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 251,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44a99cd6bf4c4c7dad0a4ef9873b197fa9dc577f09344c293e15b13c22748235",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d0e7e8-2076-9e41-91d0-7f74955cb6be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_eq_iff {v₁ v₂ : HeightOneSpectrum (𝓞 K)} : mk v₁ = mk v₂ ↔ v₁ = v₂ := by
  refine ⟨?_, fun a ↦ by rw [a]⟩
  contrapose!
  intro h
  rw [DFunLike.ne_iff]
  have ⟨x, hx1, hx2⟩ : ∃ x : 𝓞 K, x ∈ v₁.asIdeal ∧ x ∉ v₂.asIdeal := by
    by_contra! H
    exact h <| HeightOneSpectrum.ext_iff.mpr <| IsMaximal.eq_of_le (isMaximal v₁) IsPrime.ne_top' H
  use x
  simp only [mk_apply]
  rw [← norm_lt_one_iff_mem] at hx1
  rw [← norm_eq_one_iff_notMem] at hx2
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `276e6dcfcb94e989031eecbb4418cc2d3e75acc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
