# ValuativeRel.isRankLeOne_iff_mulArchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c1ed503-9c3f-f3f5-f3ee-740fbf717c3c",
  "kind": "lemma",
  "lexical_name": "ValuativeRel.isRankLeOne_iff_mulArchimedean",
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
  "slug": "valuativerel-isrankleone-iff-mularchimedean--fd17da5a9ed96334e04d6939",
  "source": {
    "blob": "6ce4fe69acd1f54adfc52a483c6b3e7c82c55282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 252,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd17da5a9ed96334e04d69390168df289805c0994e2f46afb41ff303591c6ccb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c1ed503-9c3f-f3f5-f3ee-740fbf717c3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ValuativeRel.isRankLeOne_iff_mulArchimedean :
    IsRankLeOne R ↔ MulArchimedean (ValueGroupWithZero R) := by
  constructor
  · rintro ⟨⟨f, hf⟩⟩
    exact .comap f.toMonoidHom hf
  · intro h
    by_cases H : IsNontrivial R
    · rw [isNontrivial_iff_isNontrivial (valuation R)] at H
      have h' : MulArchimedean (ValueGroup₀ (.ofClass (valuation R))) :=
        MulArchimedean.comap embedding.toMonoidHom embedding_strictMono
      rw [← (valuation R).nonempty_rankOne_iff_mulArchimedean] at h'
      obtain ⟨f⟩ := h'
      exact isRankLeOne_of_rankOne
    · refine ⟨⟨{ emb := 1, strictMono := ?_ }⟩⟩
      intro a b
      contrapose! H
      obtain ⟨H, H'⟩ := H
      rcases eq_or_ne a 0 with rfl | ha
      · simp_all
      rcases eq_or_ne a 1 with rfl | ha'
      · exact ⟨⟨b, (H.trans' zero_lt_one).ne', H.ne'⟩⟩
      · exact ⟨⟨a, ha, ha'⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce4fe69acd1f54adfc52a483c6b3e7c82c55282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
