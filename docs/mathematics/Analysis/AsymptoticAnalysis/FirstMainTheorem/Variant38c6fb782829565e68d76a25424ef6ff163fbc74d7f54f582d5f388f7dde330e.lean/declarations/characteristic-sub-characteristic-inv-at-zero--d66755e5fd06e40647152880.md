# characteristic_sub_characteristic_inv_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be64edaf-f18a-22ce-bf71-9f52d7393d86",
  "kind": "lemma",
  "lexical_name": "characteristic_sub_characteristic_inv_at_zero",
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
  "slug": "characteristic-sub-characteristic-inv-at-zero--d66755e5fd06e40647152880",
  "source": {
    "blob": "ec5c0627dac69fac77a52c6248b3116da3c4b75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variant38c6fb782829565e68d76a25424ef6ff163fbc74d7f54f582d5f388f7dde330e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d66755e5fd06e40647152880d43c8cd933cb77c482eec4637157ff70baaaf8e2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variant38c6fb782829565e68d76a25424ef6ff163fbc74d7f54f582d5f388f7dde330e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be64edaf-f18a-22ce-bf71-9f52d7393d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma characteristic_sub_characteristic_inv_at_zero (h : Meromorphic f) :
    characteristic f ⊤ 0 - characteristic f⁻¹ ⊤ 0 = log ‖f 0‖ := by
  calc characteristic f ⊤ 0 - characteristic f⁻¹ ⊤ 0
  _ = (characteristic f ⊤ - characteristic f⁻¹ ⊤) 0 := by simp
  _ = circleAverage (log ‖f ·‖) 0 0 - (divisor f Set.univ).logCounting 0 := by
    rw [ValueDistribution.characteristic_sub_characteristic_inv h, Pi.sub_apply]
  _ = log ‖f 0‖ := by
    simp

/--
First part of the First Main Theorem, quantitative version: If `f` is meromorphic on the complex
plane, then the difference between the characteristic functions of `f` and `f⁻¹` is bounded by an
explicit constant.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variant38c6fb782829565e68d76a25424ef6ff163fbc74d7f54f582d5f388f7dde330e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variant38c6fb782829565e68d76a25424ef6ff163fbc74d7f54f582d5f388f7dde330e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec5c0627dac69fac77a52c6248b3116da3c4b75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
