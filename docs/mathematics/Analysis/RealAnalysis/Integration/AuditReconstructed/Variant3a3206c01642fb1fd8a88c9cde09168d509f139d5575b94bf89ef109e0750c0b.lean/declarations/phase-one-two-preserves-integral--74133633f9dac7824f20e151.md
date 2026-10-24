# phase_one_two_preserves_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc51d0223ec17b1c3d5913552a7d2dd7ba9c3a3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffff8ab1-ad86-7a85-189b-bb31a44a4910",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7effdab-44e0-19d5-424b-1fa2579feb73",
  "kind": "theorem",
  "lexical_name": "phase_one_two_preserves_integral",
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
  "slug": "phase-one-two-preserves-integral--74133633f9dac7824f20e151",
  "source": {
    "blob": "bc51d0223ec17b1c3d5913552a7d2dd7ba9c3a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 255,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74133633f9dac7824f20e1517824a19a878f03c2ea9782ae9cc3fe21d2cc10b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7effdab-44e0-19d5-424b-1fa2579feb73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_one_two_preserves_integral :
    ∀ x, IntegralVector 2 x → IntegralVector 2 (operation (1 : ℚ_[2]) x) :=
  (integralAt_iff_preserves_integral 2 1).1 phase_one_two_integral

end LocalDomainFixtures

end FormalResearch.PositiveAtlas.RationalPhase

#check FormalResearch.PositiveAtlas.RationalPhase.PlaneCode
#print axioms FormalResearch.PositiveAtlas.RationalPhase.PlaneCode
#check FormalResearch.PositiveAtlas.RationalPhase.encode
#print axioms FormalResearch.PositiveAtlas.RationalPhase.encode
#check FormalResearch.PositiveAtlas.RationalPhase.interpret
#print axioms FormalResearch.PositiveAtlas.RationalPhase.interpret
#check FormalResearch.PositiveAtlas.RationalPhase.Supported
#print axioms FormalResearch.PositiveAtlas.RationalPhase.Supported
#check FormalResearch.PositiveAtlas.RationalPhase.coefficients
#print axioms FormalResearch.PositiveAtlas.RationalPhase.coefficients
#check FormalResearch.PositiveAtlas.RationalPhase.operation
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation
#check FormalResearch.PositiveAtlas.RationalPhase.move
#print axioms FormalResearch.PositiveAtlas.RationalPhase.move
#check FormalResearch.PositiveAtlas.RationalPhase.operation_eq_coefficients
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_eq_coefficients
#check FormalResearch.PositiveAtlas.RationalPhase.interpret_encode
#print axioms FormalResearch.PositiveAtlas.RationalPhase.interpret_encode
#check FormalResearch.PositiveAtlas.RationalPhase.interpret_move
#print axioms FormalResearch.PositiveAtlas.RationalPhase.interpret_move
#check FormalResearch.PositiveAtlas.RationalPhase.interpret_move_encode
#print axioms FormalResearch.PositiveAtlas.RationalPhase.interpret_move_encode
#check FormalResearch.PositiveAtlas.RationalPhase.quadratic
#print axioms FormalResearch.PositiveAtlas.RationalPhase.quadratic
#check FormalResearch.PositiveAtlas.RationalPhase.operation_quadratic
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_quadratic
#check FormalResearch.PositiveAtlas.RationalPhase.move_quadratic
#print axioms FormalResearch.PositiveAtlas.RationalPhase.move_quadratic
#check FormalResearch.PositiveAtlas.RationalPhase.reflection
#print axioms FormalResearch.PositiveAtlas.RationalPhase.reflection
#check FormalResearch.PositiveAtlas.RationalPhase.reflection_sq
#print axioms FormalResearch.PositiveAtlas.RationalPhase.reflection_sq
#check FormalResearch.PositiveAtlas.RationalPhase.reflection_reversal
#print axioms FormalResearch.PositiveAtlas.RationalPhase.reflection_reversal
#check FormalResearch.PositiveAtlas.RationalPhase.operation_inverse
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_inverse
#check FormalResearch.PositiveAtlas.RationalPhase.phaseReflection
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phaseReflection
#check FormalResearch.PositiveAtlas.RationalPhase.phaseReflection_sq
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phaseReflection_sq
#check FormalResearch.PositiveAtlas.RationalPhase.coefficients_one
#print axioms FormalResearch.PositiveAtlas.RationalPhase.coefficients_one
#check FormalResearch.PositiveAtlas.RationalPhase.operation_one
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_one
#check FormalResearch.PositiveAtlas.RationalPhase.IntegralAt
#print axioms FormalResearch.PositiveAtlas.RationalPhase.IntegralAt
#check FormalResearch.PositiveAtlas.RationalPhase.IntegralVector
#print axioms FormalResearch.PositiveAtlas.RationalPhase.IntegralVector
#check FormalResearch.PositiveAtlas.RationalPhase.operation_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.operation_integral
#check FormalResearch.PositiveAtlas.RationalPhase.integralAt_iff_preserves_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.integralAt_iff_preserves_integral
#check FormalResearch.PositiveAtlas.RationalPhase.coefficients_two_rat
#print axioms FormalResearch.PositiveAtlas.RationalPhase.coefficients_two_rat
#check FormalResearch.PositiveAtlas.RationalPhase.phase_two_supported_five
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_two_supported_five
#check FormalResearch.PositiveAtlas.RationalPhase.coefficients_two_five_diagonal_norm
#print axioms FormalResearch.PositiveAtlas.RationalPhase.coefficients_two_five_diagonal_norm
#check FormalResearch.PositiveAtlas.RationalPhase.phase_two_five_not_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_two_five_not_integral
#check FormalResearch.PositiveAtlas.RationalPhase.phase_two_not_supported_mod_five
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_two_not_supported_mod_five
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_not_supported_mod_two
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_not_supported_mod_two
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_supported_two
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_supported_two
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_denominator_norm
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_denominator_norm
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_integral
#check FormalResearch.PositiveAtlas.RationalPhase.phase_two_five_basis_nonintegral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_two_five_basis_nonintegral
#check FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_preserves_integral
#print axioms FormalResearch.PositiveAtlas.RationalPhase.phase_one_two_preserves_integral

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let entries := env.constants.toList.filter fun item =>
    (`FormalResearch.PositiveAtlas.RationalPhase).isPrefixOf item.1
  for (name, info) in entries.mergeSort (fun a b => Name.lt a.1 b.1) do
    let axioms ← collectAxioms name
    logInfo m!"AUDIT_NAME {name}\nAUDIT_TYPE {info.type}\nAUDIT_AXIOMS {axioms.qsort Name.lt |>.toList}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc51d0223ec17b1c3d5913552a7d2dd7ba9c3a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
