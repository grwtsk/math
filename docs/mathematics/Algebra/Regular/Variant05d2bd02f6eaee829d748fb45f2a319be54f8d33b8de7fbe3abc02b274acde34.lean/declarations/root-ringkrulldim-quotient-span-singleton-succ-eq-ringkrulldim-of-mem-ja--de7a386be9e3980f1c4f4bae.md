# _root_.ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4086897a59ebfca38b498a1404357ad6b5483d07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37689ded-74dc-d424-f711-e6b5b94de195",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba533370-074c-60ba-462a-bdce663c9bc5",
  "kind": "lemma",
  "lexical_name": "_root_.ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_jacobson",
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
  "slug": "root-ringkrulldim-quotient-span-singleton-succ-eq-ringkrulldim-of-mem-ja--de7a386be9e3980f1c4f4bae",
  "source": {
    "blob": "4086897a59ebfca38b498a1404357ad6b5483d07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/Algebra/Regular/Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de7a386be9e3980f1c4f4bae3f8811e16a175fa8d7a10a198fc2dd343cac081b",
  "verification": {
    "reference": "docs/verification/Algebra/Regular/Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba533370-074c-60ba-462a-bdce663c9bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_jacobson {x : R}
    (reg : IsSMulRegular R x) (hx : x ∈ Ring.jacobson R) :
    ringKrullDim (R ⧸ span {x}) + 1 = ringKrullDim R := by
  have h : span {x} = x • (⊤ : Ideal R) := by simp [← Submodule.ideal_span_singleton_smul]
  rw [ringKrullDim_eq_of_ringEquiv (quotientEquivAlgOfEq R h).toRingEquiv,
    ringKrullDim_quotSMulTop_succ_eq_ringKrullDim_of_mem_jacobson reg hx]

/-- If `r` is a nonzerodivisor contained in an ideal of maximal height,
`dim (R / (r)) + 1 = dim R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Regular/Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Regular/Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4086897a59ebfca38b498a1404357ad6b5483d07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
