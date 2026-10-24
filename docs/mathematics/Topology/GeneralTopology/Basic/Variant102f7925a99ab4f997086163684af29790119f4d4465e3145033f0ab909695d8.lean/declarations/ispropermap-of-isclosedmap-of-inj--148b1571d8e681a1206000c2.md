# isProperMap_of_isClosedMap_of_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c07ba3c0-9faa-ba1e-d67a-3572b5d82a6d",
  "kind": "lemma",
  "lexical_name": "isProperMap_of_isClosedMap_of_inj",
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
  "slug": "ispropermap-of-isclosedmap-of-inj--148b1571d8e681a1206000c2",
  "source": {
    "blob": "2d4e2fb530a305c81f52ae998fbfa2fcc7571ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:148b1571d8e681a1206000c2f4e33219382b8bf4d310bbca68a86b00184691ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c07ba3c0-9faa-ba1e-d67a-3572b5d82a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isProperMap_of_isClosedMap_of_inj (f_cont : Continuous f) (f_inj : f.Injective)
    (f_closed : IsClosedMap f) : IsProperMap f :=
  (isProperMap_iff_isClosedMap_of_inj f_cont f_inj).2 f_closed

/-- A homeomorphism is proper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4e2fb530a305c81f52ae998fbfa2fcc7571ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
