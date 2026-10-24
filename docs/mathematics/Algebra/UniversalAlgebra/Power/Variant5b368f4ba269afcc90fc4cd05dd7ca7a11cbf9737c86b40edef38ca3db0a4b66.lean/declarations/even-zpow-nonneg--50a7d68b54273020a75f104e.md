# Even.zpow_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cde13a94-fb81-5b6a-1c64-9b9d1c76afe0",
  "kind": "theorem",
  "lexical_name": "Even.zpow_nonneg",
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
  "slug": "even-zpow-nonneg--50a7d68b54273020a75f104e",
  "source": {
    "blob": "d2e81737c6cc3c0ed54e6d15d6f1a9ea617cf605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 186,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50a7d68b54273020a75f104ee27918d885480afd2c433c0dd0239958f4967f12",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cde13a94-fb81-5b6a-1c64-9b9d1c76afe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Even.zpow_nonneg (hn : Even n) (a : α) : 0 ≤ a ^ n := by
  obtain ⟨k, rfl⟩ := hn; exact zpow_bit0_nonneg _ _
#align even.zpow_nonneg Even.zpow_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e81737c6cc3c0ed54e6d15d6f1a9ea617cf605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
