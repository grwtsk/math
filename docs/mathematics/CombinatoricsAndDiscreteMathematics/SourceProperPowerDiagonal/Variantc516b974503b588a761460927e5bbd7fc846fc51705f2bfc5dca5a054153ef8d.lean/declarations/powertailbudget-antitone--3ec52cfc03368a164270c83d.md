# powerTailBudget_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2c6d7b8df6b7a4c63e325f78e5ff0b61536cf17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:871a3ac1-5475-43a9-65e1-caf63206b06f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8358d5e-92ce-272f-4d47-b11f079dc7e3",
  "kind": "theorem",
  "lexical_name": "powerTailBudget_antitone",
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
  "slug": "powertailbudget-antitone--3ec52cfc03368a164270c83d",
  "source": {
    "blob": "a2c6d7b8df6b7a4c63e325f78e5ff0b61536cf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec52cfc03368a164270c83dca94ebb31fa50a8ac1a219ccefd2991e73d3e00a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8358d5e-92ce-272f-4d47-b11f079dc7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerTailBudget_antitone : AntitoneOn powerTailBudget (Set.Ici 1) := by
  have hd (x : ℝ) (hx : 1 ≤ x) :
      HasDerivAt powerTailBudget (-(Real.log x) / x ^ 2 - 1 / x ^ 3) x := by
    have hx0 : x ≠ 0 := by linarith
    have hxpos : 0 < x := by linarith
    convert (((Real.hasDerivAt_log hx0).add_const 1).div (hasDerivAt_id x) hx0).add
      ((hasDerivAt_const x (1 : ℝ)).div
        ((hasDerivAt_id x).pow 2 |>.const_mul 2) (by positivity)) using 1 <;>
      (first | rfl | (simp only [id_eq, Pi.pow_apply]; field_simp; ring))
  apply antitoneOn_of_hasDerivWithinAt_nonpos (convex_Ici 1)
  · intro x hx
    exact (hd x hx).continuousAt.continuousWithinAt
  · intro x hx
    exact (hd x (interior_subset hx)).hasDerivWithinAt
  · intro x hx
    have hx1 : 1 ≤ x := interior_subset hx
    have hl := Real.log_nonneg hx1
    have hx0 : 0 < x := by linarith
    have hneg : -(Real.log x) / x ^ 2 ≤ 0 := div_nonpos_of_nonpos_of_nonneg (by linarith) (sq_nonneg x)
    have hi : 0 ≤ 1 / x ^ 3 := by positivity
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2c6d7b8df6b7a4c63e325f78e5ff0b61536cf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
