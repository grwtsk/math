# Finite.induction_to

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f48065aa-1dee-a6d3-b122-93882163f357",
  "kind": "theorem",
  "lexical_name": "Finite.induction_to",
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
  "slug": "finite-induction-to--755d082838a80eb141b31a6d",
  "source": {
    "blob": "ec9497cea8f19a4863af1713cd0880331540ecac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant19baf3271e3a95762e71eaba33a3b2d63a7a38d380316d3d5202b97d5b67d9e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:755d082838a80eb141b31a6d966f089a2d166c62b8985c2133ea79981ecf1d86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant19baf3271e3a95762e71eaba33a3b2d63a7a38d380316d3d5202b97d5b67d9e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f48065aa-1dee-a6d3-b122-93882163f357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finite.induction_to {C : Set α → Prop} {S : Set α} (h : S.Finite)
    (S0 : Set α) (hS0 : S0 ⊆ S) (H0 : C S0) (H1 : ∀ s ⊂ S, C s → ∃ a ∈ S \ s, C (insert a s)) :
    C S := by
  have : Finite S := Finite.to_subtype h
  have : Finite {T : Set α // T ⊆ S} := Finite.of_equiv (Set S) (Equiv.Set.powerset S).symm
  rw [← Subtype.coe_mk (p := (· ⊆ S)) _ le_rfl]
  rw [← Subtype.coe_mk (p := (· ⊆ S)) _ hS0] at H0
  refine Finite.to_wellFoundedGT.induction_bot' (fun s hs hs' ↦ ?_) H0
  obtain ⟨a, ⟨ha1, ha2⟩, ha'⟩ := H1 s (ssubset_of_ne_of_subset hs s.2) hs'
  exact ⟨⟨insert a s.1, insert_subset ha1 s.2⟩, Set.ssubset_insert ha2, ha'⟩

/-- Induction up to `univ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant19baf3271e3a95762e71eaba33a3b2d63a7a38d380316d3d5202b97d5b67d9e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant19baf3271e3a95762e71eaba33a3b2d63a7a38d380316d3d5202b97d5b67d9e4.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9497cea8f19a4863af1713cd0880331540ecac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
