# zeta_pole_at_one_conversion_gives_reciprocal_zero_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0a4f56e-e3c4-16c7-036b-3bef7f01ff01",
  "kind": "theorem",
  "lexical_name": "zeta_pole_at_one_conversion_gives_reciprocal_zero_at_one",
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
  "slug": "zeta-pole-at-one-conversion-gives-reciprocal-zero-at-one--1b1de90b0bc0b3f9af325bc1",
  "source": {
    "blob": "b7304dc33ed6a548bb892d2c84fb56fbfd23b00c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1de90b0bc0b3f9af325bc14b537c40853bda19c5744c74b443d5db84ffdb97",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0a4f56e-e3c4-16c7-036b-3bef7f01ff01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_pole_at_one_conversion_gives_reciprocal_zero_at_one
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    (Z.toReciprocalBoundary).boundary.zeroAt
      (Z.toReciprocalBoundary).reciprocalZeta
      (Z.toReciprocalBoundary).one :=
  zeta_pole_at_one_implies_reciprocal_zero_at_one
    Z.toReciprocalBoundary Z.poleAtOne

end Think.Analysis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7304dc33ed6a548bb892d2c84fb56fbfd23b00c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
