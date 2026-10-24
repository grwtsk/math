# modByMonic_eq_sub_mul_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53f6de398a3e9ea7c217e175c8707ce2615f4b91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09a0ee3d-93e2-35fa-aa51-1449c1f857c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:735a93ec-b6f6-0aea-be99-91a49949bbe2",
  "kind": "theorem",
  "lexical_name": "modByMonic_eq_sub_mul_div",
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
  "slug": "modbymonic-eq-sub-mul-div--1cbf4ece295b41a76568f2c5",
  "source": {
    "blob": "53f6de398a3e9ea7c217e175c8707ce2615f4b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 238,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbf4ece295b41a76568f2c555a1b6d6cb8e79957742e3289612b8cd85fce42d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:735a93ec-b6f6-0aea-be99-91a49949bbe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modByMonic_eq_sub_mul_div :
    ∀ p q : R[X], p %ₘ q = p - q * (p /ₘ q)
  | p, q =>
    letI := Classical.decEq R
    if hq : q.Monic then
      if h : degree q ≤ degree p ∧ p ≠ 0 then by
        have _wf := div_wf_lemma h hq
        have ih := modByMonic_eq_sub_mul_div
          (p - q * (C (leadingCoeff p) * X ^ (natDegree p - natDegree q))) q
        unfold modByMonic divByMonic divModByMonicAux
        rw [dite_eq_left hq, dite_eq_left h]
        rw [modByMonic, dite_eq_left hq] at ih
        refine ih.trans ?_
        rw [divByMonic, dite_eq_left hq, dite_eq_left hq, dite_eq_left h, mul_add,
          sub_add_eq_sub_sub]
      else by
        unfold modByMonic divByMonic divModByMonicAux
        dsimp
        rw [dite_eq_left hq, ite_eq_right h, dite_eq_left hq, ite_eq_right h, mul_zero, sub_zero]
    else by
      rw [modByMonic_eq_of_not_monic _ hq, divByMonic_eq_of_not_monic _ hq, mul_zero, sub_zero]
  termination_by p => p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f6de398a3e9ea7c217e175c8707ce2615f4b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
