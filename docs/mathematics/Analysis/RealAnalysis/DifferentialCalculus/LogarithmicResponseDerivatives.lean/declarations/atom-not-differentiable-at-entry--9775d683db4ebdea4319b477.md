# atom_not_differentiable_at_entry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1460687ec9d8df93a0d9a42fafc2fa7eac4024b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/Analysis/Calculus/LogarithmicResponseDerivatives.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d5b914d-2595-453c-e9fa-df53f003e28c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f343a4ca-cb7c-2aab-66a0-40dfc4b7e72e",
  "kind": "theorem",
  "lexical_name": "atom_not_differentiable_at_entry",
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
  "slug": "atom-not-differentiable-at-entry--9775d683db4ebdea4319b477",
  "source": {
    "blob": "c1460687ec9d8df93a0d9a42fafc2fa7eac4024b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/Analysis/Calculus/LogarithmicResponseDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9775d683db4ebdea4319b4774ec4e5a60a0d94a74f01b88ebeb3ed3a96088c0a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f343a4ca-cb7c-2aab-66a0-40dfc4b7e72e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_not_differentiable_at_entry (n : ℕ) (hn : 0 < n) :
    ¬DifferentiableAt ℝ (atom n) (Real.log (n : ℝ)) := by
  intro hd
  have hj := atom_derivative_jump n hn
  rw [hd.derivWithin (uniqueDiffWithinAt_Ici _),
    hd.derivWithin (uniqueDiffWithinAt_Iic _), sub_self] at hj
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
  have hpos : 0 < (Real.sqrt (n : ℝ))⁻¹ := inv_pos.mpr (Real.sqrt_pos.mpr hnreal)
  linarith

end PPNCP04

#print axioms PPNCP04.atom_right_derivative_at_entry
#print axioms PPNCP04.atom_left_derivative_at_entry
#print axioms PPNCP04.atom_derivative_jump
#print axioms PPNCP04.signed_atom_derivative_jump
#print axioms PPNCP04.atom_not_differentiable_at_entry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/LogarithmicResponseDerivatives.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1460687ec9d8df93a0d9a42fafc2fa7eac4024b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
