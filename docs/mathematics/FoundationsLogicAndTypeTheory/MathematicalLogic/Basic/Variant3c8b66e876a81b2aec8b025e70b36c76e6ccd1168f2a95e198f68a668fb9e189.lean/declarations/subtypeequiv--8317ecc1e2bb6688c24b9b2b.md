# subtypeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea6b3f44669a5e94284624f7ff57d7eb628576ff30d8341c117e185cc9303e70",
  "kind": "def",
  "lexical_name": "subtypeEquiv",
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
  "slug": "subtypeequiv--8317ecc1e2bb6688c24b9b2b",
  "source": {
    "blob": "13c6617239f223c970b51beb17b591aaad052473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8317ecc1e2bb6688c24b9b2bf402956dadbd2118ddfc265320f1310c073d1bc3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea6b3f44669a5e94284624f7ff57d7eb628576ff30d8341c117e185cc9303e70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def subtypeEquiv (p : α → Prop) [DecidablePred p] :
    derangements (Subtype p) ≃ { f : Perm α // ∀ a, ¬p a ↔ a ∈ fixedPoints f } :=
  calc
    derangements (Subtype p) ≃ { f : { f : Perm α // ∀ a, ¬p a → a ∈ fixedPoints f } //
        ∀ a, a ∈ fixedPoints f → ¬p a } := by
      refine (Perm.subtypeEquivSubtypePerm p).subtypeEquiv fun f => ⟨fun hf a hfa ha => ?_, ?_⟩
      · refine hf ⟨a, ha⟩ (Subtype.ext ?_)
        simp_rw [mem_fixedPoints, IsFixedPt, Perm.subtypeEquivSubtypePerm,
        Equiv.coe_fn_mk, Perm.ofSubtype_apply_of_mem _ ha] at hfa
        assumption
      rintro hf ⟨a, ha⟩ hfa
      refine hf _ ?_ ha
      simp only [Perm.subtypeEquivSubtypePerm_apply_coe, mem_fixedPoints]
      dsimp [IsFixedPt]
      simp_rw [Perm.ofSubtype_apply_of_mem _ ha, hfa]
    _ ≃ { f : Perm α // ∃ _h : ∀ a, ¬p a → a ∈ fixedPoints f, ∀ a, a ∈ fixedPoints f → ¬p a } :=
      subtypeSubtypeEquivSubtypeExists _ _
    _ ≃ { f : Perm α // ∀ a, ¬p a ↔ a ∈ fixedPoints f } :=
      subtypeEquivRight fun f => by
        simp_rw [exists_prop, ← forall_and, ← iff_iff_implies_and_implies]

universe u
/-- The set of permutations that fix either `a` or nothing is equivalent to the sum of:
- derangements on `α`
- derangements on `α` minus `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13c6617239f223c970b51beb17b591aaad052473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
