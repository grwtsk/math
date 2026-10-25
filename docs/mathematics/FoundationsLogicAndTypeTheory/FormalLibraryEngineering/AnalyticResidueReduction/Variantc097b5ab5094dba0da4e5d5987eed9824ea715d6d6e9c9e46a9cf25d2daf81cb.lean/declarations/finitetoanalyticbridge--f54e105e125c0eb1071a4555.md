# FiniteToAnalyticBridge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c945763837e1d3d82bd8192b2dd0c3e5637264dc7287ff49a35b2152fea09e47",
  "kind": "structure",
  "lexical_name": "FiniteToAnalyticBridge",
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
  "slug": "finitetoanalyticbridge--f54e105e125c0eb1071a4555",
  "source": {
    "blob": "0eeacd91085b184dab9cffcb354df2a121244d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f54e105e125c0eb1071a45559ebae4a734a1f70335fdb48bb62b853e90293583",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c945763837e1d3d82bd8192b2dd0c3e5637264dc7287ff49a35b2152fea09e47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteToAnalyticBridge where
  meshLevel : Nat
  refinementLevel : Nat
  meshSizeHash : Nat
  finiteToAnalyticErrorBoundHash : Nat
  gammaLiminfWitness : Nat
  gammaRecoveryWitness : Nat
  reconstructionErrorBoundHash : Nat
  shadowMapHash : Nat
  relaxationMapHash : Nat
  gammaConverges : Prop
  gammaProof : gammaConverges

/-- Authority route for the analytic residue statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eeacd91085b184dab9cffcb354df2a121244d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
