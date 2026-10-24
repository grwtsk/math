# surjectiveOnStalks_iff_forall_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b584738-de13-bcd7-aafe-a3bff3c9cd51",
  "kind": "lemma",
  "lexical_name": "surjectiveOnStalks_iff_forall_maximal",
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
  "slug": "surjectiveonstalks-iff-forall-maximal--c6065f8142bd88f60929b1e0",
  "source": {
    "blob": "a52cb1e1a4d7623a21c0012066e90a700a03e934",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 80,
    "path": "GRWTSK/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6065f8142bd88f60929b1e0e916212ace0a427e48350484d63cefa7d0d95eff",
  "verification": {
    "reference": "docs/verification/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b584738-de13-bcd7-aafe-a3bff3c9cd51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjectiveOnStalks_iff_forall_maximal :
    f.SurjectiveOnStalks ↔ ∀ (I : Ideal S) (_ : I.IsMaximal),
      Function.Surjective (Localization.localRingHom _ I f rfl) := by
  refine ⟨fun H I hI ↦ H I hI.isPrime, fun H I hI ↦ ?_⟩
  simp_rw [surjective_localRingHom_iff] at H ⊢
  intro s
  obtain ⟨M, hM, hIM⟩ := I.exists_le_maximal hI.ne_top
  obtain ⟨x, r, c, hc, hr, e⟩ := H M hM s
  exact ⟨x, r, c, fun h ↦ hc (hIM h), fun h ↦ hr (hIM h), e⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52cb1e1a4d7623a21c0012066e90a700a03e934` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
