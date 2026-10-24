# comp_pi_eq_pi_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84af846cc544dc83fa8e42eaf9ea379f2378a713",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8aed888d-20f0-021b-64b3-ee947feff628",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bb7dde8-b700-d57f-2328-7b5b3e52a7a7",
  "kind": "theorem",
  "lexical_name": "comp_pi_eq_pi_comp",
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
  "slug": "comp-pi-eq-pi-comp--c5321ee587c11ad041d0bde7",
  "source": {
    "blob": "84af846cc544dc83fa8e42eaf9ea379f2378a713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5321ee587c11ad041d0bde7d8f05dbdd5fca73e4e6b49fcaa72c2392356a70c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb7dde8-b700-d57f-2328-7b5b3e52a7a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_pi_eq_pi_comp (γ₀ : ∀ i, Path.Homotopic.Quotient (as i) (bs i))
    (γ₁ : ∀ i, Path.Homotopic.Quotient (bs i) (cs i)) : pi γ₀ ⬝ pi γ₁ = pi fun i ↦ γ₀ i ⬝ γ₁ i := by
  induction γ₁ using Quotient.induction_on_pi with | _ a =>
  induction γ₀ using Quotient.induction_on_pi
  simp only [pi_lift]
  rw [← Path.Homotopic.comp_lift, Path.trans_pi_eq_pi_trans, ← pi_lift]
  rfl

/-- Abbreviation for projection onto the ith coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84af846cc544dc83fa8e42eaf9ea379f2378a713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
