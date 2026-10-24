# not_terminalRecoveryAt_of_terminal_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:656ecbfb-84c4-6c47-0542-31b87a687134",
  "kind": "theorem",
  "lexical_name": "not_terminalRecoveryAt_of_terminal_eq_zero",
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
  "slug": "not-terminalrecoveryat-of-terminal-eq-zero--8c56a076218059b59ef92f48",
  "source": {
    "blob": "294e4f9eb548a3ed10e176bf3937ecf460626430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointInformationLossConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c56a076218059b59ef92f483977e15ec3ba724805a85fea55b60d894915b015",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointInformationLossConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:656ecbfb-84c4-6c47-0542-31b87a687134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_terminalRecoveryAt_of_terminal_eq_zero
    {a : ℕ → ℝ} {N T : ℕ}
    (hNT : N ≤ T)
    (hN : finitePrefix a N ≠ 0)
    (hT : finitePrefix a T = 0) :
    ¬ TerminalRecoveryAt a T := by
  intro hrecover
  obtain ⟨C, _hC, hbound⟩ := hrecover
  rw [hT, abs_zero, mul_zero] at hbound
  have hpositive : 0 < finitePrefixMax a T :=
    lt_of_lt_of_le (abs_pos.mpr hN) (abs_finitePrefix_le_max hNT)
  exact (not_lt_of_ge hbound) hpositive

/-- The actual two-point Möbius correlation sequence at shift `h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointInformationLossConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointInformationLossConnections.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `294e4f9eb548a3ed10e176bf3937ecf460626430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
