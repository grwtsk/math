# smaller_projection_larger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1874838a-263d-547d-e9fe-3a2ca1d64b5b",
  "kind": "theorem",
  "lexical_name": "smaller_projection_larger",
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
  "slug": "smaller-projection-larger--7c6383e822a11eec9e3fd409",
  "source": {
    "blob": "556baefe247b6a3fde9eb7e392a665556899e2e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant9a19b114d5e4342ec56723b52bfb3d1f02f7ebd65b7e326c9869461458544df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c6383e822a11eec9e3fd4097352e6a9d132cc1fadae1de2d207d57023b6453f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant9a19b114d5e4342ec56723b52bfb3d1f02f7ebd65b7e326c9869461458544df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1874838a-263d-547d-e9fe-3a2ca1d64b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smaller_projection_larger (hV : Monotone V) (q : H) (j : ℕ) :
    (V j).starProjection ((V (j + 1)).starProjection q) = (V j).starProjection q := by
  have h := DFunLike.congr_fun
    (Submodule.starProjection_comp_starProjection_of_le (hV (Nat.le_succ j))) q
  exact h

/-- A vector already in the earlier subspace is fixed by the later fit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant9a19b114d5e4342ec56723b52bfb3d1f02f7ebd65b7e326c9869461458544df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant9a19b114d5e4342ec56723b52bfb3d1f02f7ebd65b7e326c9869461458544df5.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `556baefe247b6a3fde9eb7e392a665556899e2e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
