# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ded8ea8c1a547591c93b1aab20ad3465641757a209dd24420dec3cf93e79509c",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--a0325afdf541c9fe836af6d1",
  "source": {
    "blob": "9ebcb53055f28c511c80ded222c9ba92b74fd301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 12,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds/Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0325afdf541c9fe836af6d124a3493062cb3cc7795555b4b5df4af2232826e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds/Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ded8ea8c1a547591c93b1aab20ad3465641757a209dd24420dec3cf93e79509c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {t : ℝ} (ht : 0 ≤ t) : 3 < thetaModeA t := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  unfold thetaModeA
  nlinarith [Real.pi_gt_three]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds/Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds/Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ebcb53055f28c511c80ded222c9ba92b74fd301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
