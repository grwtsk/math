# canonicalEdgeLexValue_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c028ba2-3060-4899-5a02-ab592239ec2a",
  "kind": "theorem",
  "lexical_name": "canonicalEdgeLexValue_injective",
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
  "slug": "canonicaledgelexvalue-injective--b43608397f7fad0e3a5ab9fa",
  "source": {
    "blob": "5a7feb30fc375bb95bb93eea2aca11d8024092c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant9696fe7662c5af29efdba9a7161cece68d0a3d052bad31999162b7898c2740d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b43608397f7fad0e3a5ab9faaade87024b5ffd683b9c16ed10b509209e993ff9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant9696fe7662c5af29efdba9a7161cece68d0a3d052bad31999162b7898c2740d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c028ba2-3060-4899-5a02-ab592239ec2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem canonicalEdgeLexValue_injective
    (contract : RoutingContract Host EdgeId) :
    Function.Injective contract.canonicalEdgeLexValue := by
  intro left right equality
  have levelOne := toLex_inj.mp equality
  have sourceCodeEquality := congrArg Prod.fst levelOne
  have levelTwo := toLex_inj.mp (congrArg Prod.snd levelOne)
  have tensionEquality := congrArg Prod.fst levelTwo
  have levelThree := toLex_inj.mp (congrArg Prod.snd levelTwo)
  have tieBreakEquality := congrArg Prod.fst levelThree
  have levelFour := toLex_inj.mp (congrArg Prod.snd levelThree)
  have edgeCodeEquality := congrArg Prod.fst levelFour
  have targetCodeEquality := congrArg Prod.snd levelFour
  have sourceEquality := contract.hostCode.injective sourceCodeEquality
  have edgeIdEquality := contract.edgeCode.injective edgeCodeEquality
  have targetEquality := contract.hostCode.injective targetCodeEquality
  cases left
  cases right
  simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant9696fe7662c5af29efdba9a7161cece68d0a3d052bad31999162b7898c2740d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant9696fe7662c5af29efdba9a7161cece68d0a3d052bad31999162b7898c2740d2.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a7feb30fc375bb95bb93eea2aca11d8024092c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
