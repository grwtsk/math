# Inv2.property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2f586ee19a04ac04f1f40fc84e76d13c272f779",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c60373f9-788e-228e-f9d6-6576d02736f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:daf55342-a8ea-9864-1669-5d0df47bdf7e",
  "kind": "theorem",
  "lexical_name": "Inv2.property",
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
  "slug": "inv2-property--03ab4c35b4c817b5a4c5fab2",
  "source": {
    "blob": "f2f586ee19a04ac04f1f40fc84e76d13c272f779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03ab4c35b4c817b5a4c5fab2de913198d3af74db9591da4cf10482bab3bcceda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daf55342-a8ea-9864-1669-5d0df47bdf7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Inv2.property (decls : Array (Decl α)) (idx upper : Nat) (map : HashMap α Nat)
    (hidx : idx < upper) (a : α) (hinv : Inv2 decls upper map)
    (heq : decls[idx]'(by have := upper_lt_size hinv; omega) = .atom a) :
    ∃ n, map[a]? = some n := by
  induction hinv with
  | empty => omega
  | newAtom ih1 ih2 ih3 ih4 ih5 =>
    rename_i idx' _ a' _
    replace hidx : idx ≤ idx' := by omega
    rw [HashMap.getElem?_insert]
    match heq2 : a' == a with
    | .false =>
      simp only [Bool.false_eq_true, ↓reduceIte]
      cases Nat.eq_or_lt_of_le hidx with
      | inl hidxeq =>
        subst hidxeq
        simp_all only [beq_eq_false_iff_ne, Decl.atom.injEq]
      | inr hlt =>
        exact ih5 hlt heq
    | true =>
      exact Option.isSome_iff_exists.mp rfl
  | oldAtom ih1 ih2 ih3 ih4 ih5 =>
    simp_all only [true_implies]
    rename_i idx' _ _ _
    replace hidx : idx ≤ idx' := by omega
    cases Nat.eq_or_lt_of_le hidx with
    | inl hidxeq =>
      simp only [hidxeq, ih3, Decl.atom.injEq] at heq
      rw [← heq]
      apply Exists.intro
      assumption
    | inr hlt => apply ih5 <;> assumption
  | false ih1 ih2 ih3 ih4 =>
    rename_i idx' _
    replace hidx : idx ≤ idx' := by omega
    cases Nat.eq_or_lt_of_le hidx with
    | inl hidxeq => simp [hidxeq, ih3] at heq
    | inr hlt => apply ih4 <;> assumption
  | gate ih1 ih2 ih3 ih4 =>
    rename_i idx' _ _ _
    replace hidx : idx ≤ idx' := by omega
    cases Nat.eq_or_lt_of_le hidx with
    | inl hidxeq => simp [hidxeq, ih3] at heq
    | inr hlt => apply ih4 <;> assumption

end State

/--
The invariant carrying state structure for building the `HashMap` that translates from arbitrary
atom identifiers to `Nat`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2f586ee19a04ac04f1f40fc84e76d13c272f779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
