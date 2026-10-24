# phase_not_self_adjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9e9d9aaf827604a95bcba5a21e39975157ff101",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb921013-309b-0ef3-e659-04791c552dc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8702b693-ed87-11df-c880-00569c16a98e",
  "kind": "theorem",
  "lexical_name": "phase_not_self_adjoint",
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
  "slug": "phase-not-self-adjoint--3bfa7774d9c5fecf7770b798",
  "source": {
    "blob": "d9e9d9aaf827604a95bcba5a21e39975157ff101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 332,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bfa7774d9c5fecf7770b7986ffe60e03d6a98dad3182be6e1043ee43d23dd04",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8702b693-ed87-11df-c880-00569c16a98e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_not_self_adjoint : ContinuousLinearMap.adjoint phaseOperator ≠ phaseOperator := by
  intro h
  rw [phase_adjoint] at h
  have he := congrArg (fun T : DiracSpace →L[ℂ] DiracSpace => T (diracVector 1)) h
  change (-Complex.I) • diracVector 1 = Complex.I • diracVector 1 at he
  have he' := congrArg (fun v : DiracSpace => Complex.I • v) he
  have hleft : Complex.I * (-Complex.I) = (1 : ℂ) := by
    rw [mul_neg, ← pow_two, Complex.I_sq, neg_neg]
  have hright : Complex.I * Complex.I = (-1 : ℂ) := by rw [← pow_two, Complex.I_sq]
  simp only [smul_smul, hleft, hright, one_smul, neg_one_smul] at he'
  have hsum : diracVector 1 + diracVector 1 = (0 : DiracSpace) :=
    (congrArg (fun v : DiracSpace => diracVector 1 + v) he').trans (add_neg_cancel _)
  have htwo : (2 : ℂ) • (diracVector 1 : DiracSpace) = 0 := by
    simpa only [two_smul] using hsum
  exact diracUnit_ne_zero ((smul_eq_zero.mp htwo).resolve_left (by norm_num))

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e9d9aaf827604a95bcba5a21e39975157ff101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
