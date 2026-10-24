# y_inverse_power_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13850b4b-bc09-b804-6c59-c11a27c9902b",
  "kind": "theorem",
  "lexical_name": "y_inverse_power_intervalIntegrable",
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
  "slug": "y-inverse-power-intervalintegrable--ed615305cbd7e7267f51671e",
  "source": {
    "blob": "05c53565e310870202c9b0752a69594e19251301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant280d78f100375d0069654af3388d6cb697b30601ffb79e04e77dc39c891bfd01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed615305cbd7e7267f51671e4315b16a270579f452507bfdfc3a57d4930c7728",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant280d78f100375d0069654af3388d6cb697b30601ffb79e04e77dc39c891bfd01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13850b4b-bc09-b804-6c59-c11a27c9902b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem y_inverse_power_intervalIntegrable :
    IntervalIntegrable (fun y : ℝ => y / y ^ (3 / 2 : ℝ)) volume 2 7 := by
  apply ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
  intro y hy
  have hyp : 0 < y := by linarith [hy.1]
  exact (continuousAt_id.div (continuousAt_id.rpow_const (Or.inl hyp.ne'))
    (Real.rpow_pos_of_pos hyp _).ne').continuousWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant280d78f100375d0069654af3388d6cb697b30601ffb79e04e77dc39c891bfd01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant280d78f100375d0069654af3388d6cb697b30601ffb79e04e77dc39c891bfd01.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05c53565e310870202c9b0752a69594e19251301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
