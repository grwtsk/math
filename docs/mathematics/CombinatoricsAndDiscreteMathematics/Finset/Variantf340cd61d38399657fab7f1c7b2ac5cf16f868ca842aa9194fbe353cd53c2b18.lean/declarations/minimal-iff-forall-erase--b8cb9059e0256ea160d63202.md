# minimal_iff_forall_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e31181c1-609f-9634-d4dc-9c1868ec2af5",
  "kind": "theorem",
  "lexical_name": "minimal_iff_forall_erase",
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
  "slug": "minimal-iff-forall-erase--b8cb9059e0256ea160d63202",
  "source": {
    "blob": "0f31253b4c1d5d6f39e7794cbad0918cde0279c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8cb9059e0256ea160d63202677c8e29ff9fc028fb230d7a717bddd6263d1dc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e31181c1-609f-9634-d4dc-9c1868ec2af5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimal_iff_forall_erase (hP : ∀ ⦃s t⦄, P t → t ⊆ s → P s) :
    Minimal P s ↔ P s ∧ ∀ x ∈ s, ¬ P (s.erase x) where
  mp h := ⟨h.prop, fun x hxs hx ↦ by simpa using h.le_of_le hx (erase_subset _ _) hxs⟩
  mpr h := ⟨h.1, fun t ht hts x hxs ↦ by_contra fun hxt ↦
    h.2 x hxs <| hP ht (subset_erase.2 ⟨hts, hxt⟩)⟩

@[deprecated (since := "2026-06-03")]
alias minimal_iff_forall_diff_singleton := minimal_iff_forall_erase

end minimal

/-! ### Interaction with big lattice/set operations -/

section Lattice

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f31253b4c1d5d6f39e7794cbad0918cde0279c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
