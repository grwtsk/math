# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53c7909e50113399ea3800a7301c136ba3869fe4f3561a1d73f5c4118ff50ef3",
  "kind": "instance",
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
  "slug": "instance--9c9699b53b9f215fe30eeb76",
  "source": {
    "blob": "37541afd3d2dd72541cb096c21ecbc6753015ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 73,
    "path": "GRWTSK/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c9699b53b9f215fe30eeb7691c43ee7acbf0fea74b8df317c49e6b59422e1e7",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53c7909e50113399ea3800a7301c136ba3869fe4f3561a1d73f5c4118ff50ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [PerfectField k] [Algebra.EssFiniteType k K] : Algebra.IsSeparablyGenerated k K := by
  rcases exists_isTranscendenceBasis_and_isSeparable_of_perfectField k K with ⟨s, isT, sep⟩
  exact ⟨s, isT, sep⟩

/-- A field extension is transcendental separable if every finitely generated subextension is
separably generated. -/
@[mk_iff, stacks 030O "Part 2, called separable in the Stacks project."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37541afd3d2dd72541cb096c21ecbc6753015ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
