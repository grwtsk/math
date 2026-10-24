# rank_eq_mk_of_infinite_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3684aa342bd506766b87c1c6326320c428a6bff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a200ff2b-f7a2-2157-4f36-5bd3e7fed90a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c697663b-8e20-2ac3-5a72-b1d66f30a7d6",
  "kind": "lemma",
  "lexical_name": "rank_eq_mk_of_infinite_lt",
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
  "slug": "rank-eq-mk-of-infinite-lt--bdda8ad53daedf7ae013fc4a",
  "source": {
    "blob": "a3684aa342bd506766b87c1c6326320c428a6bff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdda8ad53daedf7ae013fc4a1b2b9a0c1d8d3314453f8620dc1f08823ad2ce9a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c697663b-8e20-2ac3-5a72-b1d66f30a7d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_eq_mk_of_infinite_lt [Infinite R] (h_lt : lift.{v} #R < lift.{u} #M) :
    Module.rank R M = #M := by
  have : Infinite M := infinite_iff.mpr <| lift_le.mp <| le_trans (by simp) h_lt.le
  have h : lift #M = lift #(ChooseBasisIndex R M →₀ R) := lift_mk_eq'.mpr ⟨(chooseBasis R M).repr⟩
  simp only [mk_finsupp_lift_of_infinite', ← rank_eq_card_chooseBasisIndex, lift_max,
    lift_lift] at h
  refine lift_inj.mp ((max_eq_iff.mp h.symm).resolve_right <| not_and_of_not_left _ ?_).left
  exact (lift_umax.{v, u}.symm ▸ h_lt).ne

end Module.Free

open Module.Free

open Cardinal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3684aa342bd506766b87c1c6326320c428a6bff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
