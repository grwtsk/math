# actualMuntz_eq_closed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30697c1b-879b-a128-b77d-90eaaf348252",
  "kind": "theorem",
  "lexical_name": "actualMuntz_eq_closed_inventory",
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
  "slug": "actualmuntz-eq-closed-inventory--25eb555d1dfe5c34bf1ef4ff",
  "source": {
    "blob": "e840912fa69974f5ab6290c7b0c89b0a278fb119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 75,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25eb555d1dfe5c34bf1ef4ff68b0b95cd0d288b5329c5e32efe7ea3198239ca5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30697c1b-879b-a128-b77d-90eaaf348252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMuntz_eq_closed_inventory {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    actualMuntz A x =
      ∑ n ∈ Icc 1 (upperInventory A x), actualLogSource A ((n : ℝ)*x) := by
  rw [actualMuntz_eq_positiveSamples hA,positiveSamples_eq_closed_inventory (by linarith) hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e840912fa69974f5ab6290c7b0c89b0a278fb119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
