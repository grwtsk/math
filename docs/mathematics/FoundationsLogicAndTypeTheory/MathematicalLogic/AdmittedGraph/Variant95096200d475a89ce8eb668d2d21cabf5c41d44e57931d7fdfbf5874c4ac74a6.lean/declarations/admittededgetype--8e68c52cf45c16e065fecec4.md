# AdmittedEdgeType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8af1960579c2b8da66ce129c54d6a91f47798adab2298f56cb13f604083e3c82",
  "kind": "def",
  "lexical_name": "AdmittedEdgeType",
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
  "slug": "admittededgetype--8e68c52cf45c16e065fecec4",
  "source": {
    "blob": "cd1aaab18f2e98d963fdd936b4cc1ba80f5a9d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e68c52cf45c16e065fecec43c88ec2ed4e226486eaf80d94fd515371eea7921",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8af1960579c2b8da66ce129c54d6a91f47798adab2298f56cb13f604083e3c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AdmittedEdgeType
    {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) :
    Type uEdge :=
  { e : Edge // AdmissibleEdge sieve occurs e }

/-- Every element of the admitted-edge subtype carries its sieve witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd1aaab18f2e98d963fdd936b4cc1ba80f5a9d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
