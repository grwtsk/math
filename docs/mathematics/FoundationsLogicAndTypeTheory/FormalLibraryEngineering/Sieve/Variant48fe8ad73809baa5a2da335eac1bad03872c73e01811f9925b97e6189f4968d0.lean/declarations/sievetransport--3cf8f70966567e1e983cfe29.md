# SieveTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:771093180760c65cd1b1426af464f17147759c15520ef474aae1fbec5d48cf21",
  "kind": "structure",
  "lexical_name": "SieveTransport",
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
  "slug": "sievetransport--3cf8f70966567e1e983cfe29",
  "source": {
    "blob": "747203adad52fdda83b4246f3ee73b2bde9aab9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cf8f70966567e1e983cfe29b7a8e73433b41cf9f03d69f41c2df1b973c22917",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:771093180760c65cd1b1426af464f17147759c15520ef474aae1fbec5d48cf21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SieveTransport
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {Edge : Type uEdge}
    {FixedMorph : Type vMorph} {FixedFactorization : Type vFactor}
    {FixedEdge : Type vEdge}
    (sourceSieve : FactoringSieve Morph Factorization)
    (fixedSieve : FactoringSieve FixedMorph FixedFactorization)
    (sourceOccurs : Edge → Factorization → Prop)
    (fixedOccurs : FixedEdge → FixedFactorization → Prop) where
  mapMorphism : Morph → FixedMorph
  mapFactorization : Factorization → FixedFactorization
  mapEdge : Edge → FixedEdge
  factorMorph_commutes :
    ∀ f,
      mapMorphism (sourceSieve.factorMorph f) =
        fixedSieve.factorMorph (mapFactorization f)
  acceptance_iff :
    ∀ m, fixedSieve.accepts (mapMorphism m) ↔ sourceSieve.accepts m
  furtherFactor_preserved :
    ∀ {f g}, sourceSieve.furtherFactor f g →
      fixedSieve.furtherFactor (mapFactorization f) (mapFactorization g)
  occurrence_iff :
    ∀ e f,
      fixedOccurs (mapEdge e) (mapFactorization f) ↔
        sourceOccurs e f

namespace SieveTransport

/-- Forget acceptance data while retaining the occurrence transport maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747203adad52fdda83b4246f3ee73b2bde9aab9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
