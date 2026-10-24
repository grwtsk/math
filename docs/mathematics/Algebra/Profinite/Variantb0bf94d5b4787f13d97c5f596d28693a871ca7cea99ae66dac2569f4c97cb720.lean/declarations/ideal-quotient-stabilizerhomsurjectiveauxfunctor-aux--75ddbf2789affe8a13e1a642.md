# Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d03c1ea7-4f39-fa16-27ad-6525c8278fc4",
  "kind": "lemma",
  "lexical_name": "Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor_aux",
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
  "slug": "ideal-quotient-stabilizerhomsurjectiveauxfunctor-aux--75ddbf2789affe8a13e1a642",
  "source": {
    "blob": "8bc0de66368aaa96d57a8e390b9c4ad81e69bd9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 111,
    "path": "GRWTSK/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75ddbf2789affe8a13e1a642f94fcf20245b7324ac14b9967fe78a8eaf23facf",
  "verification": {
    "reference": "docs/verification/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d03c1ea7-4f39-fa16-27ad-6525c8278fc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor_aux
    (Q : Ideal B)
    {N N' : OpenNormalSubgroup G} (e : N ≤ N')
    (x : G ⧸ N.1.1)
    (hx : x ∈ MulAction.stabilizer (G ⧸ N.1.1) (Q.under (FixedPoints.subalgebra A B N.1.1))) :
    QuotientGroup.map _ _ (.id _) e x ∈
      MulAction.stabilizer (G ⧸ N'.1.1) (Q.under (FixedPoints.subalgebra A B N'.1.1)) := by
  show _ = _
  have h : FixedPoints.subalgebra A B N'.1.1 ≤ FixedPoints.subalgebra A B N.1.1 :=
    fun x hx n ↦ hx ⟨_, e n.2⟩
  obtain ⟨x, rfl⟩ := QuotientGroup.mk_surjective x
  replace hx := congr(Ideal.comap (Subalgebra.inclusion h) $hx)
  simpa only [Ideal.pointwise_smul_eq_comap,
    ← Ideal.comap_coe (F := RingEquiv _ _), Ideal.comap_comap] using hx

/-- (Implementation)
The functor taking an open normal subgroup `N ≤ G` to the set of lifts of `σ` in `G ⧸ N`.
We will show that its inverse limit is nonempty to conclude that there exists a lift in `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bc0de66368aaa96d57a8e390b9c4ad81e69bd9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
