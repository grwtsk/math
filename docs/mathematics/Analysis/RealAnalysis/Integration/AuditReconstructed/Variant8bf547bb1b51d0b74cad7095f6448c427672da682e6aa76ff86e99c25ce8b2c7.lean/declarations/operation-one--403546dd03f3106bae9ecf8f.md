# operation_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6d040d5-df15-5fcd-8b1c-ef3fdb9476eb",
  "kind": "theorem",
  "lexical_name": "operation_one",
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
  "slug": "operation-one--403546dd03f3106bae9ecf8f",
  "source": {
    "blob": "8b6c2a162365ed26f8c6c1f5485429e0a8c764b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:403546dd03f3106bae9ecf8f3e5184f88e1d312f89a33176ae5f0596f4f06f6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6d040d5-df15-5fcd-8b1c-ef3fdb9476eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem operation_one (x : K × K) : operation (1 : K) x = (x.2, -x.1) := by
  rw [operation_eq_coefficients, coefficients_one]
  simp

end CharacteristicZero

section IntegralCorrection

variable (p : ℕ) [Fact p.Prime]

/-- Actual coefficient integrality uses the local field's closed unit ball.
The displayed syntactic denominator is not used as an integrality criterion.
The phase-domain condition `Supported t` remains a separate requirement:
Lean's totalized division also defines `operation t` outside that domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6c2a162365ed26f8c6c1f5485429e0a8c764b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
