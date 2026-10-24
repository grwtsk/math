# Filter.Tendsto.ennrpow_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d60d57c8-f2bb-4854-9031-572416bdba94",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.ennrpow_const",
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
  "slug": "filter-tendsto-ennrpow-const--60dd7965b821a5660f11d418",
  "source": {
    "blob": "23213b5dd4f6dd1d619013603550d890ded66861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 498,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant1b21c6b1b598e19335a5976b1fe318107bb82e889f13b09b79f0e5d9ae79007f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60dd7965b821a5660f11d418ef0f54a11a4170b3f7441ba1693b8757b0d1a540",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant1b21c6b1b598e19335a5976b1fe318107bb82e889f13b09b79f0e5d9ae79007f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d60d57c8-f2bb-4854-9031-572416bdba94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.ennrpow_const {α : Type*} {f : Filter α} {m : α → ℝ≥0∞} {a : ℝ≥0∞} (r : ℝ)
    (hm : Tendsto m f (𝓝 a)) : Tendsto (fun x => m x ^ r) f (𝓝 (a ^ r)) :=
  (ENNReal.continuous_rpow_const.tendsto a).comp hm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant1b21c6b1b598e19335a5976b1fe318107bb82e889f13b09b79f0e5d9ae79007f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant1b21c6b1b598e19335a5976b1fe318107bb82e889f13b09b79f0e5d9ae79007f.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23213b5dd4f6dd1d619013603550d890ded66861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
