# isPrincipalIdealRing_iff_not_denselyOrdered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9acd8162b8e3f1a2638324921c6d726b60cded8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ce0d6ae-8338-60cb-61dc-0908d2910990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52eb11c4-d6a6-9d03-133b-29d9c02f93cd",
  "kind": "lemma",
  "lexical_name": "isPrincipalIdealRing_iff_not_denselyOrdered",
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
  "slug": "isprincipalidealring-iff-not-denselyordered--56c85e5e97c31b327c5372ca",
  "source": {
    "blob": "9acd8162b8e3f1a2638324921c6d726b60cded8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 63,
    "path": "GRWTSK/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56c85e5e97c31b327c5372ca2ca30f0c34af8bc945e34a7cfb40b29e19e74790",
  "verification": {
    "reference": "docs/verification/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52eb11c4-d6a6-9d03-133b-29d9c02f93cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPrincipalIdealRing_iff_not_denselyOrdered [MulArchimedean Γ₀] (hv : Integers v O) :
    IsPrincipalIdealRing O ↔ ¬ DenselyOrdered (Set.range v) := by
  refine ⟨fun _ ↦ not_denselyOrdered_of_isPrincipalIdealRing hv, fun H ↦ ?_⟩
  rcases subsingleton_or_nontrivial (MonoidHom.mrange v)ˣ with hs|_
  · have := bijective_algebraMap_of_subsingleton_units_mrange hv
    exact .of_surjective _ (RingEquiv.ofBijective _ this).symm.surjective
  have : IsDomain O := hv.hom_inj.isDomain
  have : ValuationRing O := ValuationRing.of_integers v hv
  have : IsBezout O := ValuationRing.instIsBezout
  have := ((IsBezout.TFAE (R := O)).out 1 3)
  rw [this, hv.wfDvdMonoid_iff_wellFounded_gt_on_v, hv.wellFounded_gt_on_v_iff_discrete_mrange,
    LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered]
  exact H

end Valuation.Integers

end Field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9acd8162b8e3f1a2638324921c6d726b60cded8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
