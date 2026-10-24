# sum_greenMeshPhase_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb3a5cd2-498e-15ee-6625-e0f1db6c0987",
  "kind": "theorem",
  "lexical_name": "sum_greenMeshPhase_pow",
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
  "slug": "sum-greenmeshphase-pow--05b74ceb89b88d46563d61ab",
  "source": {
    "blob": "a9c26f20943b98381d8e239b89728a2184e954dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b74ceb89b88d46563d61abd477398389d7a15225c1db2c25b44598ffd8bb75",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb3a5cd2-498e-15ee-6625-e0f1db6c0987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_greenMeshPhase_pow
    {X m : ℕ} {k : ℤ}
    (hq : greenMeshPhase X k ≠ 1) :
    ∑ j ∈ Finset.Icc 1 m, (greenMeshPhase X k) ^ j =
      greenMeshPhase X k *
        (1 - (greenMeshPhase X k) ^ m) /
          (1 - greenMeshPhase X k) := by
  rw [Finset.sum_Icc_eq_sum_range]
  rw [Finset.sum_geometric]
  field_simp [hq]
  ring

/-- Uniform partial-sum bound with exact small denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c26f20943b98381d8e239b89728a2184e954dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
