# SemiconjBy.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54bfb932-a952-5349-3497-2b17d7355a2c",
  "kind": "theorem",
  "lexical_name": "SemiconjBy.map",
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
  "slug": "semiconjby-map--2b6ea4dbfe71fca558e70900",
  "source": {
    "blob": "152c2af757c807818fdd5d87a65475afce195d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 30,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b6ea4dbfe71fca558e70900bbc64291f9533dbbacdb84d89adce0d779dec613",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54bfb932-a952-5349-3497-2b17d7355a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem SemiconjBy.map [MulHomClass F M N] (h : SemiconjBy a x y) (f : F) :
    SemiconjBy (f a) (f x) (f y) := by simpa only [SemiconjBy, map_mul] using congr_arg f h
#align semiconj_by.map SemiconjBy.map
#align add_semiconj_by.map AddSemiconjBy.map

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152c2af757c807818fdd5d87a65475afce195d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
