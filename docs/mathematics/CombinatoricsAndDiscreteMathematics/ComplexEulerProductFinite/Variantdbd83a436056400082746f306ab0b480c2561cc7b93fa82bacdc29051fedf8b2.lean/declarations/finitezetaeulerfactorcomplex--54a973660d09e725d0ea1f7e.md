# finiteZetaEulerFactorComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92eff88656d6e926c40dee71c08f73fcc5f71b5093f4a5e1d113559c061d2754",
  "kind": "def",
  "lexical_name": "finiteZetaEulerFactorComplex",
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
  "slug": "finitezetaeulerfactorcomplex--54a973660d09e725d0ea1f7e",
  "source": {
    "blob": "2356a076b5db6e815983968dc05338251cb1f485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54a973660d09e725d0ea1f7ea1215b2d2308c16acd98351950a02b041c3e045c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92eff88656d6e926c40dee71c08f73fcc5f71b5093f4a5e1d113559c061d2754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finiteZetaEulerFactorComplex
    (p : Nat)
    (s : Complex)
    (K : Nat) : Complex :=
  ∑ k ∈ Finset.range (K + 1), complexWeight s (p ^ k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2356a076b5db6e815983968dc05338251cb1f485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
