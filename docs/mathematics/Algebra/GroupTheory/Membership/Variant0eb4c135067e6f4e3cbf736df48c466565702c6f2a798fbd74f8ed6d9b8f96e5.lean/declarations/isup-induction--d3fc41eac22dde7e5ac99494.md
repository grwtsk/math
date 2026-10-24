# iSup_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:132b8a43-727d-a88b-0b31-6dc68cc7de1f",
  "kind": "theorem",
  "lexical_name": "iSup_induction",
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
  "slug": "isup-induction--d3fc41eac22dde7e5ac99494",
  "source": {
    "blob": "47cddeb84a27a07f1bf835c07f37792d08f85631",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 111,
    "path": "GRWTSK/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3fc41eac22dde7e5ac99494dd1c4d596b7371b4ba95eda576461e95841aa146",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:132b8a43-727d-a88b-0b31-6dc68cc7de1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_induction (S : ι → Subsemigroup M) {C : M → Prop} {x₁ : M} (hx₁ : x₁ ∈ ⨆ i, S i)
    (mem : ∀ i, ∀ x₂ ∈ S i, C x₂) (mul : ∀ x y, C x → C y → C (x * y)) : C x₁ := by
  rw [iSup_eq_closure] at hx₁
  refine closure_induction (fun x₂ hx₂ => ?_) (fun x y _ _ ↦ mul x y) hx₁
  obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx₂
  exact mem _ _ hi

/-- A dependent version of `Subsemigroup.iSup_induction`. -/
@[to_additive (attr := elab_as_elim)
"A dependent version of `AddSubsemigroup.iSup_induction`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47cddeb84a27a07f1bf835c07f37792d08f85631` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
