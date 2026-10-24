# actualClosedMangoldtMellinHeadSeven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1af28d00f97c6d2c9c5e290936c0b1ab310f47e0e816821529d1e341974c198e",
  "kind": "def",
  "lexical_name": "actualClosedMangoldtMellinHeadSeven",
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
  "slug": "actualclosedmangoldtmellinheadseven--c372b1ba6c498ae14161edfc",
  "source": {
    "blob": "885f6cbc8eb9019fea96aac739ce5f3673aa5470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c372b1ba6c498ae14161edfcd188c3ee6d3b7575c2bda925c728147abbc2226d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1af28d00f97c6d2c9c5e290936c0b1ab310f47e0e816821529d1e341974c198e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualClosedMangoldtMellinHeadSeven (s : ℂ) : ℂ :=
  ∑ n ∈ Icc 0 7, ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) * (n : ℂ) ^ (-s)

/-- The literal actual Chebyshev Mellin tail after seven. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `885f6cbc8eb9019fea96aac739ce5f3673aa5470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
