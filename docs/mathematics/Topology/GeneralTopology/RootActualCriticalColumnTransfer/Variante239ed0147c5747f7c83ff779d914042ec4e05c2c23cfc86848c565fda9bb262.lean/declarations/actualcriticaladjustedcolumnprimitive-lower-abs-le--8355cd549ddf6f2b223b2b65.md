# actualCriticalAdjustedColumnPrimitive_lower_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee02d27f-b748-a36f-e20c-283330817e71",
  "kind": "theorem",
  "lexical_name": "actualCriticalAdjustedColumnPrimitive_lower_abs_le",
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
  "slug": "actualcriticaladjustedcolumnprimitive-lower-abs-le--8355cd549ddf6f2b223b2b65",
  "source": {
    "blob": "6dbfb79e026a3521890cd2abbbba69fd8134bcf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variante239ed0147c5747f7c83ff779d914042ec4e05c2c23cfc86848c565fda9bb262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8355cd549ddf6f2b223b2b6564c5cf61f9a808669fafa0d6148c523d2ad81f46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variante239ed0147c5747f7c83ff779d914042ec4e05c2c23cfc86848c565fda9bb262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee02d27f-b748-a36f-e20c-283330817e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalAdjustedColumnPrimitive_lower_abs_le {A : ℝ} (hA : 4 ≤ A) :
    |actualCriticalAdjustedColumnPrimitive A
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))| ≤ 24 * A ^ 4 * Real.exp (-A) := by
  rw [actualCriticalAdjustedColumnPrimitive_at_lower (by linarith)]
  exact actualAdjointColumnPrimitive_sub_criticalMain_abs_le hA

/-- Genuine full-source linearity shifts the actual critical main to its true upper trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variante239ed0147c5747f7c83ff779d914042ec4e05c2c23cfc86848c565fda9bb262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variante239ed0147c5747f7c83ff779d914042ec4e05c2c23cfc86848c565fda9bb262.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dbfb79e026a3521890cd2abbbba69fd8134bcf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
