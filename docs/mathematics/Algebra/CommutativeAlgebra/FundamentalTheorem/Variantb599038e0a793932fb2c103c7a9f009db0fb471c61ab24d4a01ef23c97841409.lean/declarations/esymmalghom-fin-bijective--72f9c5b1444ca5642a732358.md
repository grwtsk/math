# esymmAlgHom_fin_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15873973-49fd-5dba-9528-626f46a5ed83",
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
  "slug": "esymmalghom-fin-bijective--72f9c5b1444ca5642a732358",
  "source": {
    "blob": "b63979578d1a8b3a3b4647a95cb3746e0b10afe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 298,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72f9c5b1444ca5642a73235806d960c82de79b3a272d9c344f5f9516959c3c0d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15873973-49fd-5dba-9528-626f46a5ed83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma esymmAlgHom_fin_bijective (n : ℕ) :
    Function.Bijective (esymmAlgHom (Fin n) R n) := by
  use esymmAlgHom_fin_injective R le_rfl
  rintro ⟨p, hp⟩
  rw [← AlgHom.mem_range]
  obtain rfl | h0 := eq_or_ne p 0
  · exact Subalgebra.zero_mem _
  induction' he : p.supDegree toLex using WellFoundedLT.induction with t ih generalizing p; subst he
  let t := Finsupp.equivFunOnFinite.symm (invAccumulate n n <| ↑(ofLex <| p.supDegree toLex))
  have hd :
      (esymmAlgHomMonomial _ t <| p.leadingCoeff toLex).supDegree toLex = p.supDegree toLex := by
    rw [← ofLex_inj, DFunLike.ext'_iff, supDegree_esymmAlgHomMonomial _ _ le_rfl]
    · exact accumulate_invAccumulate le_rfl hp.antitone_supDegree
    · rwa [Ne, leadingCoeff_eq_zero toLex.injective]
  obtain he | hne := eq_or_ne p (esymmAlgHomMonomial _ t <| p.leadingCoeff toLex)
  · convert AlgHom.mem_range_self _ (monomial t <| p.leadingCoeff toLex)
  have := (supDegree_sub_lt_of_leadingCoeff_eq toLex.injective hd.symm ?_).resolve_right hne
  · specialize ih _ this _ (Subalgebra.sub_mem _ hp <| isSymmetric_esymmAlgHomMonomial _ _) _ rfl
    · rwa [sub_ne_zero]
    convert ← Subalgebra.add_mem _ ih ⟨monomial t (p.leadingCoeff toLex), rfl⟩
    apply sub_add_cancel p
  · rw [leadingCoeff_esymmAlgHomMonomial t le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b63979578d1a8b3a3b4647a95cb3746e0b10afe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
