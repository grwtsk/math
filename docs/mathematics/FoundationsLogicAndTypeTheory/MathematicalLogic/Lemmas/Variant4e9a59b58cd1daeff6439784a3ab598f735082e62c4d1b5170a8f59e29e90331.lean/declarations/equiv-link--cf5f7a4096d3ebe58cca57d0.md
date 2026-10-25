# equiv_link

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1dbf01b-874c-2cfd-ab37-90e582a742ad",
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
  "slug": "equiv-link--cf5f7a4096d3ebe58cca57d0",
  "source": {
    "blob": "c404a7c27c193ef508aa4118a055a26c239b350e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant4e9a59b58cd1daeff6439784a3ab598f735082e62c4d1b5170a8f59e29e90331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf5f7a4096d3ebe58cca57d0d8351ad1acb5c601790aeb7435ee70b8e4414f35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant4e9a59b58cd1daeff6439784a3ab598f735082e62c4d1b5170a8f59e29e90331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1dbf01b-874c-2cfd-ab37-90e582a742ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–147.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant4e9a59b58cd1daeff6439784a3ab598f735082e62c4d1b5170a8f59e29e90331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant4e9a59b58cd1daeff6439784a3ab598f735082e62c4d1b5170a8f59e29e90331.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c404a7c27c193ef508aa4118a055a26c239b350e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
