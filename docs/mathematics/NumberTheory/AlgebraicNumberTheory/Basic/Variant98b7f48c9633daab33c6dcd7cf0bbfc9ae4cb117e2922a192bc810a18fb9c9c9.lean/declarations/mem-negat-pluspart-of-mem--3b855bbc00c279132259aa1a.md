# mem_negAt_plusPart_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6b6efe9-1871-41ca-9533-31ecff75f03e",
  "kind": "theorem",
  "lexical_name": "mem_negAt_plusPart_of_mem",
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
  "slug": "mem-negat-pluspart-of-mem--3b855bbc00c279132259aa1a",
  "source": {
    "blob": "4c813c5689dc9b979161222249d0a01268774891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1071,
    "line": 1056,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant98b7f48c9633daab33c6dcd7cf0bbfc9ae4cb117e2922a192bc810a18fb9c9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b855bbc00c279132259aa1ae0733c1ad47bc1f2072158e590d0284d9a1bbd9c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant98b7f48c9633daab33c6dcd7cf0bbfc9ae4cb117e2922a192bc810a18fb9c9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6b6efe9-1871-41ca-9533-31ecff75f03e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1056–1071.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_negAt_plusPart_of_mem (hx₁ : x ∈ A) (hx₂ : ∀ w, x.1 w ≠ 0) :
    x ∈ negAt s '' (plusPart A) ↔ (∀ w, w ∈ s → x.1 w < 0) ∧ (∀ w, w ∉ s → x.1 w > 0) := by
  refine ⟨fun hx ↦ ⟨fun _ hw ↦ neg_of_mem_negA_plusPart A hx hw,
      fun _ hw ↦ pos_of_notMem_negAt_plusPart A hx hw⟩,
      fun ⟨h₁, h₂⟩ ↦
        ⟨(fun w ↦ ‖x.1 w‖, x.2), ⟨(hA x).mp hx₁, fun w ↦ norm_pos_iff.mpr (hx₂ w)⟩, ?_⟩⟩
  ext w
  · by_cases hw : w ∈ s
    · simp [negAt_apply_isReal_and_mem _ hw, abs_of_neg (h₁ w hw)]
    · simp [negAt_apply_isReal_and_notMem _ hw, abs_of_pos (h₂ w hw)]
  · rfl

include hA in
/-- Assume that `A`  is symmetric at real places then, the union of the images of `plusPart`
by `negAt` and of the set of elements of `A` that are zero at at least one real place
is equal to `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant98b7f48c9633daab33c6dcd7cf0bbfc9ae4cb117e2922a192bc810a18fb9c9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant98b7f48c9633daab33c6dcd7cf0bbfc9ae4cb117e2922a192bc810a18fb9c9c9.lean#L1056).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c813c5689dc9b979161222249d0a01268774891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
