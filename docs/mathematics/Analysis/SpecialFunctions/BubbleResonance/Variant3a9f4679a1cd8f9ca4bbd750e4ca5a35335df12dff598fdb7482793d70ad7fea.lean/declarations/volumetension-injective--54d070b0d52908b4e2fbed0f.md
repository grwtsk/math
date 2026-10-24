# volumeTension_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9faa1153-3af5-9996-a2ba-7ec71fa1a6f6",
  "kind": "theorem",
  "lexical_name": "volumeTension_injective",
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
  "slug": "volumetension-injective--54d070b0d52908b4e2fbed0f",
  "source": {
    "blob": "48edd86c11849d6d946b41f5c48640d8d891e56e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 212,
    "path": "GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d070b0d52908b4e2fbed0f0890ff955f311202529d00bedc6576b88c88d676",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9faa1153-3af5-9996-a2ba-7ec71fa1a6f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volumeTension_injective : Function.Injective volumeTension := by
  intro first second equal
  apply Prod.ext
  · exact sphereVolumeFormula_injective (congrArg Prod.fst equal)
  · apply Subtype.ext
    exact congrArg Prod.snd equal

/-- A strictly positive base state used by both individual-carrier collisions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variant3a9f4679a1cd8f9ca4bbd750e4ca5a35335df12dff598fdb7482793d70ad7fea.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48edd86c11849d6d946b41f5c48640d8d891e56e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
