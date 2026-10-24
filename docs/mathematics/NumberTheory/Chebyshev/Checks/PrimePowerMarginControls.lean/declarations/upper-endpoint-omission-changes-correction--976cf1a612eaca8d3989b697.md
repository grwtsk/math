# upper_endpoint_omission_changes_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46661f7f-a2b5-0a89-26bf-1c1d1e08f416",
  "kind": "theorem",
  "lexical_name": "upper_endpoint_omission_changes_correction",
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
  "slug": "upper-endpoint-omission-changes-correction--976cf1a612eaca8d3989b697",
  "source": {
    "blob": "8134904a6da6686ac7dff6008676d79e3f877fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:976cf1a612eaca8d3989b697ff38de28c47498286f250ed9cf439bf231698871",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46661f7f-a2b5-0a89-26bf-1c1d1e08f416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_endpoint_omission_changes_correction :
    properPrimePowerMass 1 3 = 0 ∧ 0 < properPrimePowerMass 1 4 := by
  have hi : Finset.Ioc (1 : ℕ) 3 = {2, 3} := by decide
  have h2 : Nat.Prime 2 := by decide
  have h3 : Nat.Prime 3 := by decide
  constructor
  · simp [properPrimePowerMass, hi, h2, h3]
  · rw [first_square_upper_correction]
    exact Real.log_pos (by norm_num)

/-- The weighted prime-only consumer does accept an interval with actual primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8134904a6da6686ac7dff6008676d79e3f877fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
