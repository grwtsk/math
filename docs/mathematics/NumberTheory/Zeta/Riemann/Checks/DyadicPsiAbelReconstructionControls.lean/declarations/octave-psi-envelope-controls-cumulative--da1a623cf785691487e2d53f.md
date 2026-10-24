# octave_psi_envelope_controls_cumulative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bd4f6e0-8a46-636d-7191-d3bcd4fe86aa",
  "kind": "theorem",
  "lexical_name": "octave_psi_envelope_controls_cumulative",
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
  "slug": "octave-psi-envelope-controls-cumulative--da1a623cf785691487e2d53f",
  "source": {
    "blob": "b14f64ba3dd23eddf7aea01444f076ee3379ec6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 14,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicPsiAbelReconstructionControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da1a623cf785691487e2d53f70343dbdc10b884631616f83b70a051dc5b0419c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/DyadicPsiAbelReconstructionControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bd4f6e0-8a46-636d-7191-d3bcd4fe86aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem octave_psi_envelope_controls_cumulative
    {X : ℕ} (hX : 2 ≤ X)
    {A : ℝ} (hA : PsiOctaveEnvelope X A)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    |cumulative X t| ≤ (3 * A + 1) / (X : ℝ) :=
  cumulative_abs_le_of_psiEnvelope hX hA ht

end GRWTSK.RiemannHypothesis.Checks.DyadicPsiAbelReconstructionControls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/DyadicPsiAbelReconstructionControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicPsiAbelReconstructionControls.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b14f64ba3dd23eddf7aea01444f076ee3379ec6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
