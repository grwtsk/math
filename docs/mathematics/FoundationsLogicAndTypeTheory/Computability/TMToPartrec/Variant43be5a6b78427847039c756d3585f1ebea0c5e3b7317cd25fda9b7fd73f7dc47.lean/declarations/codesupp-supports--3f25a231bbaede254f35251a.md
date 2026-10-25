# codeSupp'_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:850d5eaf-7252-a6ac-9fe9-33fdeebe3272",
  "kind": "theorem",
  "lexical_name": "codeSupp'_supports",
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
  "slug": "codesupp-supports--3f25a231bbaede254f35251a",
  "source": {
    "blob": "183ab7fd7953d1da639e2f38b8533f488f779d18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2045,
    "line": 2006,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f25a231bbaede254f35251ab06077e4bf3d822206389815b5781d09f0fd8f69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:850d5eaf-7252-a6ac-9fe9-33fdeebe3272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2006–2045.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem codeSupp'_supports {S c k} (H : codeSupp c k ⊆ S) : Supports (codeSupp' c k) S := by
  induction c generalizing k
  iterate 3
    exact trStmts₁_supports (trNormal_supports H) (Finset.Subset.trans (codeSupp_self _ _) H)
  case cons f fs IHf IHfs =>
    have H' := H; simp only [codeSupp_cons, Finset.union_subset_iff] at H'
    refine' trStmts₁_supports' (trNormal_supports H) (Finset.union_subset_left H) fun h => _
    refine' supports_union.2 ⟨IHf H'.2, _⟩
    refine' trStmts₁_supports' (trNormal_supports _) (Finset.union_subset_right h) fun h => _
    · simp only [codeSupp, Finset.union_subset_iff, contSupp] at h H ⊢
      exact ⟨h.2.2.1, h.2.2.2, H.2⟩
    refine' supports_union.2 ⟨IHfs _, _⟩
    · rw [codeSupp, contSupp_cons₁] at H'
      exact Finset.union_subset_right (Finset.union_subset_right H'.2)
    exact
      trStmts₁_supports (head_supports <| Finset.union_subset_right H)
        (Finset.union_subset_right h)
  case comp f g IHf IHg =>
    have H' := H; rw [codeSupp_comp] at H'; have H' := Finset.union_subset_right H'
    refine' trStmts₁_supports' (trNormal_supports H) (Finset.union_subset_left H) fun h => _
    refine' supports_union.2 ⟨IHg H', _⟩
    refine' trStmts₁_supports' (trNormal_supports _) (Finset.union_subset_right h) fun _ => _
    · simp only [codeSupp', codeSupp, Finset.union_subset_iff, contSupp] at h H ⊢
      exact ⟨h.2.2, H.2⟩
    exact IHf (Finset.union_subset_right H')
  case case f g IHf IHg =>
    have H' := H; simp only [codeSupp_case, Finset.union_subset_iff] at H'
    refine' trStmts₁_supports' (trNormal_supports H) (Finset.union_subset_left H) fun _ => _
    exact supports_union.2 ⟨IHf H'.2.1, IHg H'.2.2⟩
  case fix f IHf =>
    have H' := H; simp only [codeSupp_fix, Finset.union_subset_iff] at H'
    refine' trStmts₁_supports' (trNormal_supports H) (Finset.union_subset_left H) fun h => _
    refine' supports_union.2 ⟨IHf H'.2, _⟩
    refine' trStmts₁_supports' (trNormal_supports _) (Finset.union_subset_right h) fun _ => _
    · simp only [codeSupp', codeSupp, Finset.union_subset_iff, contSupp, trStmts₁,
        Finset.insert_subset_iff] at h H ⊢
      exact ⟨h.1, ⟨H.1.1, h⟩, H.2⟩
    exact supports_singleton.2 (ret_supports <| Finset.union_subset_right H)
#align turing.partrec_to_TM2.code_supp'_supports Turing.PartrecToTM2.codeSupp'_supports

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean#L2006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183ab7fd7953d1da639e2f38b8533f488f779d18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
