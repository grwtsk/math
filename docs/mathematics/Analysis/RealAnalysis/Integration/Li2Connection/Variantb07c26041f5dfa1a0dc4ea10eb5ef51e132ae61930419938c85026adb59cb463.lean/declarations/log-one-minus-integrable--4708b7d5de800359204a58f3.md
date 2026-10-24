# log_one_minus_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27962ddc-a6d3-0d70-8958-0ddd6b34addf",
  "kind": "theorem",
  "lexical_name": "log_one_minus_integrable",
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
  "slug": "log-one-minus-integrable--4708b7d5de800359204a58f3",
  "source": {
    "blob": "a70c583ba061275efe406256d68d3e2ac49f3cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4708b7d5de800359204a58f345dd1fb847d2e128f2f083d1e8cbc60324a99d1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27962ddc-a6d3-0d70-8958-0ddd6b34addf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_one_minus_integrable (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    IntervalIntegrable (fun u => 1 / Real.log (1 - u)) MeasureTheory.volume ε 1 := by
  -- Standard result: 1/log(1-u) is integrable on [ε, 1] despite the logarithmic singularity at u=1
  sorry

/-- 1/log(1+u) is integrable on [ε, 1] for ε > 0.
    This is continuous and bounded on the closed interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a70c583ba061275efe406256d68d3e2ac49f3cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
