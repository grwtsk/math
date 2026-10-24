# RingHom.localization_away_map_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c47a16a49c844b99c0a6f2c6447b3713822a47b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e03d897b-313d-8e94-b582-10b878d6ea46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63387734-4e7a-fcfa-b02a-2171add56ff0",
  "kind": "theorem",
  "lexical_name": "RingHom.localization_away_map_finite",
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
  "slug": "ringhom-localization-away-map-finite--05cf2abdab2dc00b8d35a4b6",
  "source": {
    "blob": "c47a16a49c844b99c0a6f2c6447b3713822a47b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 114,
    "path": "GRWTSK/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05cf2abdab2dc00b8d35a4b6a07a7992025ebe996cd43b6e67aa252deaaef2bc",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63387734-4e7a-fcfa-b02a-2171add56ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.localization_away_map_finite (r : R) [IsLocalization.Away r R']
    [IsLocalization.Away (f r) S'] (hf : f.Finite) : (IsLocalization.Away.map R' S' f r).Finite :=
  finite_localizationPreserves.away f r _ _ hf

open scoped Classical in
/-- Let `S` be an `R`-algebra, `M` a submonoid of `R`, and `S' = M⁻¹S`.
If the image of some `x : S` falls in the span of some finite `s ⊆ S'` over `R`,
then there exists some `m : M` such that `m • x` falls in the
span of `IsLocalization.finsetIntegerMultiple _ s` over `R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c47a16a49c844b99c0a6f2c6447b3713822a47b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
