# Homology.standardFinitePrismaticSurfaceModel2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31dafd88b8ebb4ca7c67c44bddc420a9f220e54a9f0628931e1ceff3d7cbe3ac",
  "kind": "def",
  "lexical_name": "Homology.standardFinitePrismaticSurfaceModel2",
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
  "slug": "homology-standardfiniteprismaticsurfacemodel2--25c4959db98c03efd18e7b00",
  "source": {
    "blob": "6affcb68f99b091fbab20108bc028259adc9af54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbb6a492bc585a4c57a7ee1548bbbafdc132bc131f899ef1762e67d70dceb66a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25c4959db98c03efd18e7b00ef3c8fa570f9a76e66303d9cb235097b3f559793",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbb6a492bc585a4c57a7ee1548bbbafdc132bc131f899ef1762e67d70dceb66a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31dafd88b8ebb4ca7c67c44bddc420a9f220e54a9f0628931e1ceff3d7cbe3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homology.standardFinitePrismaticSurfaceModel2 :
    Homology.FinitePrismaticSurfaceModel 2 where
  prism := Homology.standardPrism
  frob_phi := fun i j =>
    if i = j then
      1
    else
      0
  frob_bounded_by_d := by
    intro i j
    by_cases h : i = j
    · simp [Homology.standardPrism, h]
    · simp [Homology.standardPrism, h]
  delta_ring_label := "δ-ring Frobenius lift over a prism (A,I)"
  proof_label := "finite matrix entries bounded by prism_d"

/-- Euler obstruction data for even spheres. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbb6a492bc585a4c57a7ee1548bbbafdc132bc131f899ef1762e67d70dceb66a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbb6a492bc585a4c57a7ee1548bbbafdc132bc131f899ef1762e67d70dceb66a7.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6affcb68f99b091fbab20108bc028259adc9af54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
