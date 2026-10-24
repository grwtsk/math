# OrbitReynoldsCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb2157c15b7ea75b35658150ea314f4c3d85a192df0312ea8bbeb8a0b4c1f435",
  "kind": "structure",
  "lexical_name": "OrbitReynoldsCertificate",
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
  "slug": "orbitreynoldscertificate--37f9c52af9cca9b5de4c7803",
  "source": {
    "blob": "b6fb311ca6429a226a760dfb32ed3022c6f7ccf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variant7dffe20c03fdc139c20bc11e4d53cfadbe18ba8d7109ed71edefdddd95197e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37f9c52af9cca9b5de4c780383539d6fb09bc18f3b90ddf8003f3e5d11405771",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variant7dffe20c03fdc139c20bc11e4d53cfadbe18ba8d7109ed71edefdddd95197e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb2157c15b7ea75b35658150ea314f4c3d85a192df0312ea8bbeb8a0b4c1f435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrbitReynoldsCertificate
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) where
  reynoldsInvariant :
    ∀ observable,
      AutomorphismInvariantObservable
        model
        (reynoldsProjection model observable)
  reynoldsIdempotent :
    ∀ observable,
      reynoldsProjection model
          (reynoldsProjection model observable) =
        reynoldsProjection model observable
  reynoldsFixesInvariant :
    ∀ observable,
      AutomorphismInvariantObservable
          model observable →
      reynoldsProjection model observable =
        observable
  complementProjectsToZero :
    ∀ observable,
      reynoldsProjection model
          (nontrivialSymmetryComponent
            model observable) =
        0
  expectationInvariant :
    ∀ automorphism observable,
      system.law.expectation
          (bitfieldObservableAction
            model automorphism observable) =
        system.law.expectation observable
  reynoldsPreservesExpectation :
    ∀ observable,
      system.law.expectation
          (reynoldsProjection model observable) =
        system.law.expectation observable
  quotientObservableCharacterization :
    ∀ observable,
      AutomorphismInvariantObservable
          model observable ↔
        ∀ left right,
          OrbitEquivalent model left right →
          observable left = observable right
  orbitStabilizer :
    ∀ state,
      (automorphismOrbit model state).card *
          (automorphismStabilizer model state).card =
        Fintype.card model.Automorphism

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variant7dffe20c03fdc139c20bc11e4d53cfadbe18ba8d7109ed71edefdddd95197e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variant7dffe20c03fdc139c20bc11e4d53cfadbe18ba8d7109ed71edefdddd95197e32.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fb311ca6429a226a760dfb32ed3022c6f7ccf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
