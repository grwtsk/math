# perm_inv_on_of_perm_on_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc142e8d-e27b-9533-6b68-d5c95277dd77",
  "kind": "theorem",
  "lexical_name": "perm_inv_on_of_perm_on_finset",
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
  "slug": "perm-inv-on-of-perm-on-finset--043df2d6b465e2aa46a847bb",
  "source": {
    "blob": "928a61e72a53c6b26dbf8eeafdfe6de198140aba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:043df2d6b465e2aa46a847bbb1b15f68f7edd464f380dc090700813b9c1fbab0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc142e8d-e27b-9533-6b68-d5c95277dd77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_inv_on_of_perm_on_finset {s : Finset α} {f : Perm α} (h : ∀ x ∈ s, f x ∈ s) {y : α}
    (hy : y ∈ s) : f⁻¹ y ∈ s := by
  have h0 : ∀ y ∈ s, ∃ (x : _) (hx : x ∈ s), y = (fun i (_ : i ∈ s) => f i) x hx :=
    Finset.surj_on_of_inj_on_of_card_le (fun x hx => (fun i _ => f i) x hx) (fun a ha => h a ha)
      (fun a₁ a₂ ha₁ ha₂ heq => (Equiv.apply_eq_iff_eq f).mp heq) rfl.ge
  obtain ⟨y2, hy2, heq⟩ := h0 y hy
  convert hy2
  rw [heq]
  simp only [inv_apply_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `928a61e72a53c6b26dbf8eeafdfe6de198140aba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
