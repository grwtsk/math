# mkInverseCircleSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd29374c8d7d756dbadafbd16382570e4bba158d464497dd4fc8084a6ce6b79b",
  "kind": "def",
  "lexical_name": "mkInverseCircleSegment",
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
  "slug": "mkinversecirclesegment--e0824121973fa2a03f47ebf3",
  "source": {
    "blob": "e9bedf135a5b69514794f0f686a8c563e969f202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0824121973fa2a03f47ebf39b7496b3c6f0350e9485bd066334d0a81786e65c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd29374c8d7d756dbadafbd16382570e4bba158d464497dd4fc8084a6ce6b79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInverseCircleSegment
    (eps : FiniteEpsilon)
    (n : Nat) :
    PolarCircleSegment where
  epsilon := eps
  coreWord := word1001
  repetitions := n
  expandedWord := repeatWord n word1001
  mode := .expanded1001
  coreIsSplitOrInverse := Or.inr rfl
  expandedSound := rfl
  endpointBoundary := [
    "The segment should be read as epsilon-1001^n-epsilon.",
    "Endpoints are finite epsilon descriptors."
  ]
  xorBoundary := [
    "This is the inverted polar seam.",
    "No stream invertibility is claimed without BinaryLogicMatrixFlow."
  ]

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9bedf135a5b69514794f0f686a8c563e969f202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
