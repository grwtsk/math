# dualWeightUpdate_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cddcca2-8069-ac9c-418e-ae4645272b58",
  "kind": "theorem",
  "lexical_name": "dualWeightUpdate_positive",
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
  "slug": "dualweightupdate-positive--00025a77f4a6ffcde69d40f3",
  "source": {
    "blob": "0fab8d17f5ec2a76f59463f044a9afbfa9ce95ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variant0070d8eb79273d5fe4fb1897d9f6eb4e3d0058acb0c6eb117bd6ebb2a19b7b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00025a77f4a6ffcde69d40f3988d6c0edcf2b614ecfe90745e62398fbe81b511",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variant0070d8eb79273d5fe4fb1897d9f6eb4e3d0058acb0c6eb117bd6ebb2a19b7b21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cddcca2-8069-ac9c-418e-ae4645272b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualWeightUpdate_positive (positiveLabel : Bool) {a b : ℚ}
    (ha : 0 < a) (hb : 0 < b) :
    0 < (dualWeightUpdate positiveLabel a b).1 ∧
      0 < (dualWeightUpdate positiveLabel a b).2 := by
  cases positiveLabel with
  | false =>
      change 0 < 8 * a / 5 ∧ 0 < 4 * b / 5
      constructor <;> positivity
  | true =>
      change 0 < 4 * a / 5 ∧ 0 < 8 * b / 5
      constructor <;> positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variant0070d8eb79273d5fe4fb1897d9f6eb4e3d0058acb0c6eb117bd6ebb2a19b7b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variant0070d8eb79273d5fe4fb1897d9f6eb4e3d0058acb0c6eb117bd6ebb2a19b7b21.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fab8d17f5ec2a76f59463f044a9afbfa9ce95ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
