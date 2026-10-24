# Summable.toCompl_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9457ceca-7de7-bfed-5c41-0f2457fa51c8",
  "kind": "theorem",
  "lexical_name": "Summable.toCompl_tsum",
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
  "slug": "summable-tocompl-tsum--6eb3f21adc65c3653227b90f",
  "source": {
    "blob": "8b055d1cb8680d612d0ca8bd17a670e5991db9a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb3f21adc65c3653227b90f990cf969d4ff54258dbc40f88db51d5ad63dd3ba",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9457ceca-7de7-bfed-5c41-0f2457fa51c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Summable.toCompl_tsum {f : β → α} (hf : Summable f) : ∑' i, toCompl (f i) = ∑' i, f i :=
  (hf.map_tsum toCompl (continuous_coe α)).symm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b055d1cb8680d612d0ca8bd17a670e5991db9a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
