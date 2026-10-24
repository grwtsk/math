# injOn_setOfPred_mem_Icc_setOfPred_lower_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "502475e1069d68185b8cbc6864f656017fd924a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe9c2f65-419b-e9ab-17dc-a8f5b979e79a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7c0efdd-3635-4478-5293-e3742aa2a777",
  "kind": "theorem",
  "lexical_name": "injOn_setOfPred_mem_Icc_setOfPred_lower_eq",
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
  "slug": "injon-setofpred-mem-icc-setofpred-lower-eq--631e13250ba5d1ca09869fe6",
  "source": {
    "blob": "502475e1069d68185b8cbc6864f656017fd924a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:631e13250ba5d1ca09869fe64ff97609c811b4ae7d2386dbd1763afe5b83f9a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7c0efdd-3635-4478-5293-e3742aa2a777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injOn_setOfPred_mem_Icc_setOfPred_lower_eq (x : ι → ℝ) :
    InjOn (fun J : Box ι => { i | J.lower i = x i }) { J | J ∈ π ∧ x ∈ Box.Icc J } := by
  rintro J₁ ⟨h₁, hx₁⟩ J₂ ⟨h₂, hx₂⟩ (H : { i | J₁.lower i = x i } = { i | J₂.lower i = x i })
  suffices ∀ i, (Ioc (J₁.lower i) (J₁.upper i) ∩ Ioc (J₂.lower i) (J₂.upper i)).Nonempty by
    choose y hy₁ hy₂ using this
    exact π.eq_of_mem_of_mem h₁ h₂ hy₁ hy₂
  intro i
  simp only [Set.ext_iff, mem_ofPred] at H
  rcases (hx₁.1 i).eq_or_lt with hi₁ | hi₁
  · have hi₂ : J₂.lower i = x i := (H _).1 hi₁
    have H₁ : x i < J₁.upper i := by simpa only [hi₁] using J₁.lower_lt_upper i
    have H₂ : x i < J₂.upper i := by simpa only [hi₂] using J₂.lower_lt_upper i
    rw [Set.Ioc_inter_Ioc, hi₁, hi₂, sup_idem, Set.nonempty_Ioc]
    exact lt_min H₁ H₂
  · have hi₂ : J₂.lower i < x i := (hx₂.1 i).lt_of_ne (mt (H _).2 hi₁.ne)
    exact ⟨x i, ⟨hi₁, hx₁.2 i⟩, ⟨hi₂, hx₂.2 i⟩⟩

@[deprecated (since := "2026-07-09")]
alias injOn_setOf_mem_Icc_setOf_lower_eq := injOn_setOfPred_mem_Icc_setOfPred_lower_eq

open scoped Classical in
/-- The set of boxes of a prepartition that contain `x` in their closures has cardinality
at most `2 ^ Fintype.card ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `502475e1069d68185b8cbc6864f656017fd924a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
