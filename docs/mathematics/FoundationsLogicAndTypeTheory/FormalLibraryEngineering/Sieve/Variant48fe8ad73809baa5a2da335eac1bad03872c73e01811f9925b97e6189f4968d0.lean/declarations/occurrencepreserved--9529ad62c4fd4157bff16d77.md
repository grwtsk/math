# OccurrencePreserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef19b8651051ce38040a69c305ddf451c8c9e4b5f7bff8884206266f57e11efb",
  "kind": "def",
  "lexical_name": "OccurrencePreserved",
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
  "slug": "occurrencepreserved--9529ad62c4fd4157bff16d77",
  "source": {
    "blob": "747203adad52fdda83b4246f3ee73b2bde9aab9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9529ad62c4fd4157bff16d770e1bb985580e87b2b3f3d73e30de5691caf3d272",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef19b8651051ce38040a69c305ddf451c8c9e4b5f7bff8884206266f57e11efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OccurrencePreserved
    {Edge : Type uEdge} {FixedEdge : Type vEdge}
    {Factorization : Type uFactor} {FixedFactorization : Type vFactor}
    (sourceOccurs : Edge → Factorization → Prop)
    (fixedOccurs : FixedEdge → FixedFactorization → Prop)
    (T : TraversalTransport Edge FixedEdge Factorization FixedFactorization) :
    Prop :=
  ∀ e f, sourceOccurs e f →
    fixedOccurs (T.mapEdge e) (T.mapFactorization f)

/-- A typed sieve transport entails one-way occurrence preservation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747203adad52fdda83b4246f3ee73b2bde9aab9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
