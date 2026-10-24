# KanComplex.iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bbacafeb7557e05e15a4cdc97b8e5043fbd15f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab479aec8c05706a89cdd316ef85011750d1976ff9ebd2563d12844fee7259aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e18d5157-c218-681f-5f80-339164a4e976",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf1f006b-95cf-b1d2-91ba-1fe1120ca349",
  "kind": "lemma",
  "lexical_name": "KanComplex.iff",
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
  "slug": "kancomplex-iff--2a2b549196c72668e92cef4b",
  "source": {
    "blob": "8bbacafeb7557e05e15a4cdc97b8e5043fbd15f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/Topology/AlgebraicTopology/KanComplex/Variantab479aec8c05706a89cdd316ef85011750d1976ff9ebd2563d12844fee7259aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a2b549196c72668e92cef4b9efc8fbba3b711510e487ca515ac5fa392008c63",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/KanComplex/Variantab479aec8c05706a89cdd316ef85011750d1976ff9ebd2563d12844fee7259aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf1f006b-95cf-b1d2-91ba-1fe1120ca349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma KanComplex.iff {Z : SSet.{u}} :
    KanComplex Z ↔
      ∀ ⦃n : ℕ⦄ ⦃i : Fin (n + 2)⦄ (f : ∀ (j : Fin (n + 2)) (_ : j ≠ i), Δ[n] ⟶ Z)
        (_ : horn.IsCompatible f),
        ∃ (φ : Δ[n + 1] ⟶ Z),
          ∀ (j : Fin (n + 2)) (hj : j ≠ i), stdSimplex.δ j ≫ φ = f j hj := by
  refine ⟨fun _ n i f hf ↦ hf.exists_lift_of_kanComplex,
    fun h ↦ (isFibrant_iff _).2 ⟨?_⟩⟩
  rw [fibrations_eq]
  intro _ _ _ hf
  simp only [J, MorphismProperty.iSup_iff] at hf
  obtain ⟨n, ⟨i⟩⟩ := hf
  refine ⟨fun {t _} _ ↦ ?_⟩
  obtain ⟨φ, hφ⟩ := h _ (horn.IsCompatible.of_hom t)
  exact ⟨⟨{
    l := φ
    fac_left := horn.hom_ext' (by simpa using hφ)
    fac_right := by subsingleton }⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/KanComplex/Variantab479aec8c05706a89cdd316ef85011750d1976ff9ebd2563d12844fee7259aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/KanComplex/Variantab479aec8c05706a89cdd316ef85011750d1976ff9ebd2563d12844fee7259aa.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbacafeb7557e05e15a4cdc97b8e5043fbd15f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
