# isTheta_deriv_rpow_const_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a95e2be-55a6-8b29-0c6e-6bb67e747cf8",
  "kind": "lemma",
  "lexical_name": "isTheta_deriv_rpow_const_atTop",
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
  "slug": "istheta-deriv-rpow-const-attop--125cceaf031bd4674049f727",
  "source": {
    "blob": "3f90070ee09dc49e097db76316d2a8b854229e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 728,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant57cf0a134cd054c226ea0bd288061e70f3764d9f34ff278dadf6fd7dc2a6436c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:125cceaf031bd4674049f727e1154fbfd60835a9910319e727fbfdddf29a6c36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant57cf0a134cd054c226ea0bd288061e70f3764d9f34ff278dadf6fd7dc2a6436c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a95e2be-55a6-8b29-0c6e-6bb67e747cf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTheta_deriv_rpow_const_atTop {p : ℝ} (hp : p ≠ 0) :
    deriv (fun (x : ℝ) ↦ x ^ p) =Θ[atTop] fun x => x ^ (p - 1) := by
  calc deriv (fun (x : ℝ) ↦ x ^ p) = fun x => p * x ^ (p - 1) := Real.deriv_rpow_const' p
    _ =Θ[atTop] fun x ↦ x ^ (p - 1) :=
      Asymptotics.IsTheta.const_mul_left hp Asymptotics.isTheta_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant57cf0a134cd054c226ea0bd288061e70f3764d9f34ff278dadf6fd7dc2a6436c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant57cf0a134cd054c226ea0bd288061e70f3764d9f34ff278dadf6fd7dc2a6436c.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f90070ee09dc49e097db76316d2a8b854229e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
