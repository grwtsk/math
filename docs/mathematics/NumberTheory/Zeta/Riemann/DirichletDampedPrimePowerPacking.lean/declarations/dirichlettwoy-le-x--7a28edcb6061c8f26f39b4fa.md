# dirichletTwoY_le_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f07c815-0cb7-31ad-dbfb-5d706dac9147",
  "kind": "theorem",
  "lexical_name": "dirichletTwoY_le_X",
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
  "slug": "dirichlettwoy-le-x--7a28edcb6061c8f26f39b4fa",
  "source": {
    "blob": "8e294b9e792efd7f967b31fec557175bd4c5d4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a28edcb6061c8f26f39b4fa3617351c27cab7da7ba4cabd03661a2579e3cc73",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f07c815-0cb7-31ad-dbfb-5d706dac9147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletTwoY_le_X (n : ℕ) :
    dirichletTwoY n ≤ dirichletTwoX n := by
  let event := canonicalPrimePowerEventSequence n
  let q := (canonicalPrimePowerValueSequence n : ℝ)
  have hlog :
      event.logScale = Real.log q := by
    rw [PrimePowerEvent.logScale_eq_log_natValue]
    simp [event, q, canonicalPrimePowerEventSequence_natValue]
  have hraw := event.mangoldtScale_le_logScale
  rw [hlog] at hraw
  unfold dirichletTwoY dirichletTwoX
  exact div_le_div_of_nonneg_right hraw (sq_nonneg q)

/-- The actual s=2 von Mangoldt coordinate tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e294b9e792efd7f967b31fec557175bd4c5d4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
