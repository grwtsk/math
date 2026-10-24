# hasFiniteFPowerSeriesOnBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30201d81-dfe8-a134-e202-5bb2cf215137",
  "kind": "theorem",
  "lexical_name": "hasFiniteFPowerSeriesOnBall",
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
  "slug": "hasfinitefpowerseriesonball--8132b7dd3d488b82a65a3378",
  "source": {
    "blob": "7aed9386e107a71945deb95509637f3c997cf4f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Linear/Variantb28b021d44d43cfb54751f3f991ea89d8b7a59d2e756b9d4c2cfadb18655e5ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8132b7dd3d488b82a65a3378d07f827be696e5707852c56fe413e830c4c429f0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Linear/Variantb28b021d44d43cfb54751f3f991ea89d8b7a59d2e756b9d4c2cfadb18655e5ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30201d81-dfe8-a134-e202-5bb2cf215137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem hasFiniteFPowerSeriesOnBall (f : E →L[𝕜] F) (x : E) :
    HasFiniteFPowerSeriesOnBall f (f.fpowerSeries x) x 2 ∞ where
  r_le := by simp
  r_pos := ENNReal.coe_lt_top
  hasSum := fun _ => (hasSum_nat_add_iff' 2).1 <| by
    simp [Finset.sum_range_succ, hasSum_zero, fpowerSeries]
  finite := by
    intro m hm
    match m with
    | 0 | 1 => linarith
    | n + 2 => simp [fpowerSeries]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Linear/Variantb28b021d44d43cfb54751f3f991ea89d8b7a59d2e756b9d4c2cfadb18655e5ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Linear/Variantb28b021d44d43cfb54751f3f991ea89d8b7a59d2e756b9d4c2cfadb18655e5ce.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aed9386e107a71945deb95509637f3c997cf4f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
