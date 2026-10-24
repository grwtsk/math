# esymmAlgHom_fin_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377bb94c58397dc00f1ae086a43d8af3dfa22837",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:090e8395-0426-4560-69ac-8f81717f58e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bda2401-fbfb-f002-433c-96677e381bc3",
  "kind": "lemma",
  "lexical_name": "esymmAlgHom_fin_bijective",
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
  "slug": "esymmalghom-fin-bijective--f0be7e57aabaf1231aa2f333",
  "source": {
    "blob": "377bb94c58397dc00f1ae086a43d8af3dfa22837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 293,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0be7e57aabaf1231aa2f333555a271de303b3a4d2bb577d74b188f36e3838cd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bda2401-fbfb-f002-433c-96677e381bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma esymmAlgHom_fin_bijective (n : ℕ) :
    Function.Bijective (esymmAlgHom (Fin n) R n) := by
  use esymmAlgHom_fin_injective R le_rfl
  rintro ⟨p, hp⟩
  rw [← AlgHom.mem_range]
  obtain rfl | h0 := eq_or_ne p 0
  · exact Subalgebra.zero_mem _
  induction he : p.supDegree toLex using WellFoundedLT.induction generalizing p with | _ t ih
  subst he
  let t := Finsupp.equivFunOnFinite.symm (invAccumulate n n <| ↑(ofLex <| p.supDegree toLex))
  have hd :
      (esymmAlgHomMonomial _ t <| p.leadingCoeff toLex).supDegree toLex = p.supDegree toLex := by
    rw [← ofLex_inj, DFunLike.ext'_iff, supDegree_esymmAlgHomMonomial _ _ le_rfl]
    · exact accumulate_invAccumulate le_rfl hp.antitone_supDegree
    · rwa [Ne, leadingCoeff_eq_zero toLex.injective]
  obtain he | hne := eq_or_ne p (esymmAlgHomMonomial _ t <| p.leadingCoeff toLex)
  · convert! AlgHom.mem_range_self _ (monomial t <| p.leadingCoeff toLex)
  have := (supDegree_sub_lt_of_leadingCoeff_eq toLex.injective hd.symm ?_).resolve_right hne
  · specialize ih _ this _ (Subalgebra.sub_mem _ hp <| isSymmetric_esymmAlgHomMonomial _ _) _ rfl
    · rwa [sub_ne_zero]
    convert! ← Subalgebra.add_mem _ ih ⟨monomial t (p.leadingCoeff toLex), rfl⟩
    apply sub_add_cancel p
  · rw [leadingCoeff_esymmAlgHomMonomial t le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377bb94c58397dc00f1ae086a43d8af3dfa22837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
