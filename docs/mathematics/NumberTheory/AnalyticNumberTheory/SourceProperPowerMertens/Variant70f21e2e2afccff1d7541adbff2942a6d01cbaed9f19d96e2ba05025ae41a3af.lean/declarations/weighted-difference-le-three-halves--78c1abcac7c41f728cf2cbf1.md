# weighted_difference_le_three_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea19ad0e-a989-9f21-49fa-3d0f66359c87",
  "kind": "theorem",
  "lexical_name": "weighted_difference_le_three_halves",
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
  "slug": "weighted-difference-le-three-halves--78c1abcac7c41f728cf2cbf1",
  "source": {
    "blob": "ebfbb6f0e478f9ee0e1ed8c6b1eeb2edddd4f86c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variant70f21e2e2afccff1d7541adbff2942a6d01cbaed9f19d96e2ba05025ae41a3af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78c1abcac7c41f728cf2cbf16c18b26af11fc569b3152c13b0e3bb74b34c0a9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variant70f21e2e2afccff1d7541adbff2942a6d01cbaed9f19d96e2ba05025ae41a3af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea19ad0e-a989-9f21-49fa-3d0f66359c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_difference_le_three_halves (N : ℕ) :
    weightedMangoldt N - weightedPrime N ≤ 3 / 2 := by
  rw [← tailProperMass_one_eq]
  simpa [powerTailBudget] using tailProperMass_le_budget 1 N (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variant70f21e2e2afccff1d7541adbff2942a6d01cbaed9f19d96e2ba05025ae41a3af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variant70f21e2e2afccff1d7541adbff2942a6d01cbaed9f19d96e2ba05025ae41a3af.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfbb6f0e478f9ee0e1ed8c6b1eeb2edddd4f86c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
