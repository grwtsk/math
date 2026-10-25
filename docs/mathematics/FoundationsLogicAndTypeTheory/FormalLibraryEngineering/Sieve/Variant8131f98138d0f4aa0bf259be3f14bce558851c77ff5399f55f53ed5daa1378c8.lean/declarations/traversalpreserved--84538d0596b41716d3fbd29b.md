# TraversalPreserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0027eb273319752ab9f96277b14ad118ef58f051d4fab03a54549547453c2b9",
  "kind": "def",
  "lexical_name": "TraversalPreserved",
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
  "slug": "traversalpreserved--84538d0596b41716d3fbd29b",
  "source": {
    "blob": "d9427eba94fdb0ece26e90b26aa4adda7e243100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84538d0596b41716d3fbd29bf3c04f677ba529eb3925e6f72165afd852bf9ea9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0027eb273319752ab9f96277b14ad118ef58f051d4fab03a54549547453c2b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TraversalPreserved
    {Edge : Type uEdge} {FixedEdge : Type vEdge}
    {Factorization : Type uFactor} {FixedFactorization : Type vFactor}
    (sourceOccurs : Edge → Factorization → Prop)
    (fixedOccurs : FixedEdge → FixedFactorization → Prop)
    (sourceWeight : TraversalWeight Edge)
    (fixedWeight : TraversalWeight FixedEdge)
    (T : TraversalTransport Edge FixedEdge Factorization FixedFactorization) :
    Prop :=
  OccurrencePreserved sourceOccurs fixedOccurs T ∧
    TraversalWeightPreserved sourceWeight fixedWeight T

/-- Positive weight implies admissibility only under the stated soundness rule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9427eba94fdb0ece26e90b26aa4adda7e243100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
