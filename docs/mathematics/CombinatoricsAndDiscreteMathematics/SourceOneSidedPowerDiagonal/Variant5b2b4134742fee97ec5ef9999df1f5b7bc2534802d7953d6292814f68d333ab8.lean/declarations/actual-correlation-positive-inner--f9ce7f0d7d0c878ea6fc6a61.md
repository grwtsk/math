# actual_correlation_positive_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b02ab76-c109-28ff-16cf-65e2a7c718bc",
  "kind": "theorem",
  "lexical_name": "actual_correlation_positive_inner",
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
  "slug": "actual-correlation-positive-inner--f9ce7f0d7d0c878ea6fc6a61",
  "source": {
    "blob": "bf70136325650aa2ce76d84153fdaf37b1eda8b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ce7f0d7d0c878ea6fc6a61df52ee265186ce621ec9f530506edb37ab76eb51",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b02ab76-c109-28ff-16cf-65e2a7c718bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_positive_inner (A t : ℝ) (hA : 91 ≤ A)
    (ht : |t| ≤ 3 * A / 5) :
    (1 / 10 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
  have hA0 : 0 < A := by linarith
  have hs : t ^ 2 ≤ 9 * A ^ 2 / 25 := by
    have he : |t| ^ 2 = t ^ 2 := sq_abs t
    nlinarith [abs_nonneg t]
  have hb : 5 / A ^ 2 * t ^ 2 / 2 ≤ (9 / 10 : ℝ) := by
    rw [show 5 / A ^ 2 * t ^ 2 / 2 = 5 * t ^ 2 / (2 * A ^ 2) by ring]
    apply (div_le_iff₀ (by positivity : 0 < 2 * A ^ 2)).mpr
    nlinarith
  have he := (abs_le.mp (actual_correlation_zero_taylor_bound A t hA)).1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf70136325650aa2ce76d84153fdaf37b1eda8b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
