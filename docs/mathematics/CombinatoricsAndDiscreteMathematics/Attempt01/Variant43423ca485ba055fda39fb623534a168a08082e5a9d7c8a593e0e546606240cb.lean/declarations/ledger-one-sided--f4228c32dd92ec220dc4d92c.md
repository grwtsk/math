# ledger_one_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce424d2c-c60a-daf7-d744-52a39c3b7def",
  "kind": "theorem",
  "lexical_name": "ledger_one_sided",
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
  "slug": "ledger-one-sided--f4228c32dd92ec220dc4d92c",
  "source": {
    "blob": "db510be7b3751adbe24432efed81bb0be50eb336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variant43423ca485ba055fda39fb623534a168a08082e5a9d7c8a593e0e546606240cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4228c32dd92ec220dc4d92ca0b3cca67a3d40a5273d4cddde5bcfc097a08a00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt01/Variant43423ca485ba055fda39fb623534a168a08082e5a9d7c8a593e0e546606240cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce424d2c-c60a-daf7-d744-52a39c3b7def`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ledger_one_sided (A b0 b1 b2 Cp rho Elog Eplain : ℝ)
    (hproper : typeTwoDiagonal A - retainedPrimeDiagonal A ≤ rho)
    (hprime : retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ) ≤ Cp)
    (hlog : shortLogSource A - shortLogMainTerm A (logLinearMain A b1 b2) ≤ Elog)
    (hplain : -Eplain ≤ shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b0 b1)) :
    betaMainLedger A + coefficientMainTerm A b0 b1 b2 ≤ Cp + rho + Elog + Eplain := by
  rw [ledger_plus_coefficientMainTerm]
  linarith

/-- Instantiate the one-sided ledger on the independently fixed actual coefficient main. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt01/Variant43423ca485ba055fda39fb623534a168a08082e5a9d7c8a593e0e546606240cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variant43423ca485ba055fda39fb623534a168a08082e5a9d7c8a593e0e546606240cb.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db510be7b3751adbe24432efed81bb0be50eb336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
