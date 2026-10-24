# subset_iUnion_iff_mem_of_isMaximal_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff422fd1-a85b-67e7-7ee3-a76e9b9a70f5",
  "kind": "lemma",
  "lexical_name": "subset_iUnion_iff_mem_of_isMaximal_of_finite",
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
  "slug": "subset-iunion-iff-mem-of-ismaximal-of-finite--8966b2e1d5f3cbdde79f7bd9",
  "source": {
    "blob": "029b70b0cfa6f8db77caa7e1f285af4ede9276d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1250,
    "line": 1240,
    "path": "GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8966b2e1d5f3cbdde79f7bd918cc72553449b0f07b3e645498438db88ddcd1ee",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff422fd1-a85b-67e7-7ee3-a76e9b9a70f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1240–1250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subset_iUnion_iff_mem_of_isMaximal_of_finite
    {R : Type*} [CommRing R] {M : Ideal R} [M.IsMaximal] {S : Set (Ideal R)}
    (hs : S.Finite) (a b : Ideal R) (hp : ∀ I ∈ S, I ≠ a → I ≠ b → I.IsPrime)
    (ha : a ≠ ⊤) (hb : b ≠ ⊤) : ((M : Set R) ⊆ ⋃ I ∈ S, I) ↔ M ∈ S := by
  refine (subset_union_prime_finite hs a b hp).trans ⟨fun ⟨I, mem, le⟩ ↦ ?_, (⟨M, ·, le_rfl⟩)⟩
  rwa [‹M.IsMaximal›.eq_of_le _ le]
  simp_rw [← or_iff_not_imp_left] at hp
  obtain rfl | rfl | hp := hp I mem
  exacts [ha, hb, hp.ne_top]

/-- Generalize `Ideal.IsMaximal.exists_inv` to power of maximal ideals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean#L1240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029b70b0cfa6f8db77caa7e1f285af4ede9276d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
