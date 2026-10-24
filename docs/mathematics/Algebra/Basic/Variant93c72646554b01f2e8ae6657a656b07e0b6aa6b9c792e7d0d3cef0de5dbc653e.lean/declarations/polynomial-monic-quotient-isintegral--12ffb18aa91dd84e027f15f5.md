# Polynomial.Monic.quotient_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54061eeae5ec6e13d42f008066b5fc44c19da317",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afcbccff-00e9-c51d-19f0-4962cac18923",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d962045b-2274-55c4-d262-823f7f9e77b7",
  "kind": "lemma",
  "lexical_name": "Polynomial.Monic.quotient_isIntegral",
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
  "slug": "polynomial-monic-quotient-isintegral--12ffb18aa91dd84e027f15f5",
  "source": {
    "blob": "54061eeae5ec6e13d42f008066b5fc44c19da317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 322,
    "path": "GRWTSK/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12ffb18aa91dd84e027f15f52e646a3a3441f36e2723e4e33bdb9297c6a68377",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d962045b-2274-55c4-d262-823f7f9e77b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Polynomial.Monic.quotient_isIntegral {g : S[X]} (mon : g.Monic) {I : Ideal S[X]} (h : g ∈ I) :
    ((Ideal.Quotient.mkₐ S I).comp (Algebra.ofId S S[X])).IsIntegral := by
  have eq_top : Algebra.adjoin S {(Ideal.Quotient.mkₐ S I) X} = ⊤ := by
    ext g
    constructor
    · simp only [Algebra.mem_top, implies_true]
    · intro _
      obtain ⟨g', hg⟩ := Ideal.Quotient.mkₐ_surjective S I g
      have : g = (Polynomial.aeval ((Ideal.Quotient.mkₐ S I) X)) g' := by
        nth_rw 1 [← hg, aeval_eq_sum_range' (lt_add_one _),
          as_sum_range_C_mul_X_pow g', map_sum]
        simp only [Polynomial.C_mul', ← map_pow, map_smul]
      exact this ▸ (aeval_mem_adjoin_singleton S ((Ideal.Quotient.mk I) Polynomial.X))
  exact fun a ↦ (eq_top ▸ adjoin_le_integralClosure <| mon.quotient_isIntegralElem h)
    Algebra.mem_top

end

section IsIntegralClosure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54061eeae5ec6e13d42f008066b5fc44c19da317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
