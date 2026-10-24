# fourTentKernelWitnesses_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c86b906f-02d5-7f3e-15d7-cb73c5a5da47",
  "kind": "theorem",
  "lexical_name": "fourTentKernelWitnesses_independent",
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
  "slug": "fourtentkernelwitnesses-independent--074fdd5bd9ce35498286608b",
  "source": {
    "blob": "3fc41b00fb882d2dc93f46e9d2bb79bafec780d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:074fdd5bd9ce35498286608bb60c92a40af67fa9a2eac289dca2e48e4e95f142",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c86b906f-02d5-7f3e-15d7-cb73c5a5da47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourTentKernelWitnesses_independent
    (a b : ℂ)
    (h : (fun i : Fin 4 =>
      a * stageFourKernelVector i + b * stageFiveKernelVector i) =
        (0 : Combination 3)) :
    a = 0 ∧ b = 0 := by
  have h2 : a * cofactorTwo = 0 := by
    have hv := congrArg (fun u : Combination 3 => u (2 : Fin 4)) h
    simpa [stageFourKernelVector, stageFiveKernelVector] using hv
  have h3 : b * cofactorTwo = 0 := by
    have hv := congrArg (fun u : Combination 3 => u (3 : Fin 4)) h
    simpa [stageFourKernelVector, stageFiveKernelVector] using hv
  exact ⟨(mul_eq_zero.mp h2).resolve_right cofactorTwo_ne_zero,
    (mul_eq_zero.mp h3).resolve_right cofactorTwo_ne_zero⟩

/-- All two-moment kernel vectors become combinations of the two
explicit cofactor witnesses after multiplication by the genuine
nonzero two-tent determinant. No division is hidden in this theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc41b00fb882d2dc93f46e9d2bb79bafec780d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
