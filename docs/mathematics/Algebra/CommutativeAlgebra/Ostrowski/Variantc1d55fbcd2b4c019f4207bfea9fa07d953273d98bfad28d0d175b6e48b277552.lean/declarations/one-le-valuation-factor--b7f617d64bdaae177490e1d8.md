# one_le_valuation_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b5bbfd9-293a-9f26-cd34-9e364b2a2296",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfad7ab0-351c-1273-ce4b-f74d230514c1",
  "kind": "lemma",
  "lexical_name": "one_le_valuation_factor",
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
  "slug": "one-le-valuation-factor--b7f617d64bdaae177490e1d8",
  "source": {
    "blob": "6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f617d64bdaae177490e1d8d759381c67af2fdefc135a0875b1570ec3c74fdc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfad7ab0-351c-1273-ce4b-f74d230514c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma one_le_valuation_factor (hne : {p : K[X] | v p < 1 ∧ p ≠ 0}.Nonempty) {a b : K[X]}
    (hab : v ↑(a * b) < 1 ∧ a ≠ 0 ∧ b ≠ 0) (hπᵥ : degree_lt_wf.min _ hne = a * b)
    (hb : ¬IsUnit b) : 1 ≤ v ↑a := by
  set πᵥ := degree_lt_wf.min _ hne
  have hda : a.degree < πᵥ.degree := by
    have hbpos := degree_pos_of_ne_zero_of_nonunit hab.2.2 hb
    simp_rw [hπᵥ, degree_mul, degree_eq_natDegree hab.2.1, degree_eq_natDegree hab.2.2] at hbpos ⊢
    norm_cast
    simpa using hbpos
  have hlea := imp_not_comm.mp (degree_lt_wf.not_lt_min _) hda
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
