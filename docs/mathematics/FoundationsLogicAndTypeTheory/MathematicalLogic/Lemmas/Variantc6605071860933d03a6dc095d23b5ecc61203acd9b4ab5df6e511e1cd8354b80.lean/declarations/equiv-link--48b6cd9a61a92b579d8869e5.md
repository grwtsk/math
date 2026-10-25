# equiv_link

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7efdcb86a139e39fb1467e37a714afe74a5ef690",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6605071860933d03a6dc095d23b5ecc61203acd9b4ab5df6e511e1cd8354b80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61a9c29e-e918-cbdd-af7c-e1ef63934b3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76d8d594-b270-6edc-03fa-7cfd46cd0f48",
  "kind": "theorem",
  "lexical_name": "equiv_link",
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
  "slug": "equiv-link--48b6cd9a61a92b579d8869e5",
  "source": {
    "blob": "7efdcb86a139e39fb1467e37a714afe74a5ef690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc6605071860933d03a6dc095d23b5ecc61203acd9b4ab5df6e511e1cd8354b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48b6cd9a61a92b579d8869e50d040dcd140633f618ae39b22eee3e4f86f9ab60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc6605071860933d03a6dc095d23b5ecc61203acd9b4ab5df6e511e1cd8354b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76d8d594-b270-6edc-03fa-7cfd46cd0f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_link {self : UnionFind} {x y : Fin self.size}
    (xroot : self.parent x = x) (yroot : self.parent y = y) :
    Equiv (link self x y yroot) a b ↔
    Equiv self a b ∨ Equiv self a x ∧ Equiv self y b ∨ Equiv self a y ∧ Equiv self x b := by
  have {m : UnionFind} {x y : Fin self.size}
      (xroot : self.rootD x = x) (yroot : self.rootD y = y)
      (hm : ∀ i, m.rootD i = if self.rootD i = x ∨ self.rootD i = y then x.1 else self.rootD i) :
      Equiv m a b ↔
      Equiv self a b ∨ Equiv self a x ∧ Equiv self y b ∨ Equiv self a y ∧ Equiv self x b := by
    simp [Equiv, hm, xroot, yroot]
    by_cases h1 : rootD self a = x <;> by_cases h2 : rootD self b = x <;>
      simp [h1, h2, imp_false, Decidable.not_not, -left_eq_ite_iff]
    · simp [Ne.symm h2, -left_eq_ite_iff]; split <;> simp [@eq_comm _ _ (rootD self b), *]
    · by_cases h1 : rootD self a = y <;> by_cases h2 : rootD self b = y <;>
        simp [@eq_comm _ _ (rootD self b), *]
  obtain ⟨r, ha, hr⟩ := root_link xroot yroot; revert hr
  rw [← rootD_eq_self] at xroot yroot
  obtain rfl | rfl := ha
  · exact this xroot yroot
  · simpa [or_comm, and_comm] using this yroot xroot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc6605071860933d03a6dc095d23b5ecc61203acd9b4ab5df6e511e1cd8354b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc6605071860933d03a6dc095d23b5ecc61203acd9b4ab5df6e511e1cd8354b80.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efdcb86a139e39fb1467e37a714afe74a5ef690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
