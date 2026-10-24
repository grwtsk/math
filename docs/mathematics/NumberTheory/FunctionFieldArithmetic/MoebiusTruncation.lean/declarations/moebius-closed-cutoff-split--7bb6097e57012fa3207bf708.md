# moebius_closed_cutoff_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82e420c4-f19c-f653-21a3-05d6a02af20f",
  "kind": "theorem",
  "lexical_name": "moebius_closed_cutoff_split",
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
  "slug": "moebius-closed-cutoff-split--7bb6097e57012fa3207bf708",
  "source": {
    "blob": "18dc4fb21cd5fb0bcc6d2beebccc2ac422b4c6ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bb6097e57012fa3207bf7086a7e525d6cd0b3440c4fbdd31a4dd22070c197d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82e420c4-f19c-f653-21a3-05d6a02af20f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebius_closed_cutoff_split (U : ℕ) :
    (μ : ArithmeticFunction ℤ) =
      2 * closedArithmeticCutoff μ U -
        closedArithmeticCutoff μ U * closedArithmeticCutoff μ U * ζ +
        (μ - closedArithmeticCutoff μ U) * (μ - closedArithmeticCutoff μ U) * ζ := by
  exact arithmetic_inverse_split μ (closedArithmeticCutoff μ U) ζ
    ArithmeticFunction.moebius_mul_coe_zeta

/-- The retained high component has no coefficient at or below its cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18dc4fb21cd5fb0bcc6d2beebccc2ac422b4c6ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
