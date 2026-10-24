# literal_L_sub_plain_eq_full_Abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a98f4106-ccd3-112b-a7f4-7a47a62d2b40",
  "kind": "theorem",
  "lexical_name": "literal_L_sub_plain_eq_full_Abel",
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
  "slug": "literal-l-sub-plain-eq-full-abel--e039c6ff66e8eee26c8d7f8c",
  "source": {
    "blob": "216d5b0940156dc7d4caa04f1a32300c3ac31cd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 199,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb016e8c1fb05e1c0bb816741f8ae368f61145896e8e0cc5b754ad56c56103b90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e039c6ff66e8eee26c8d7f8ce86dc12036d33d9ad0698ebb86d9ad175dc4a3b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb016e8c1fb05e1c0bb816741f8ae368f61145896e8e0cc5b754ad56c56103b90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a98f4106-ccd3-112b-a7f4-7a47a62d2b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_L_sub_plain_eq_full_Abel {A : ℝ} (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      -(∫ x in Ioi (1 : ℝ),
        complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) := by
  rw [literal_L_sub_plain_eq_finite_Abel hA]
  congr 1
  symm
  have hX : (1 : ℝ) ≤ Real.exp (2 * A) := Real.one_le_exp (by linarith)
  rw [← Ioc_union_Ioi_eq_Ioi hX]
  apply integral_union_eq_left_of_forall measurableSet_Ioi
  intro x hx
  rw [actual_derivative_zero_above hA hx, mul_zero]

/-- Actual signed log kernel of the complete strict complement minus plain baseline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb016e8c1fb05e1c0bb816741f8ae368f61145896e8e0cc5b754ad56c56103b90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb016e8c1fb05e1c0bb816741f8ae368f61145896e8e0cc5b754ad56c56103b90.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216d5b0940156dc7d4caa04f1a32300c3ac31cd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
