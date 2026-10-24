# CofibrantBrownFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ad4275fc11bfc67fe00ee5721a459c104618f09db8f16606efccf2458ad516f",
  "kind": "structure",
  "lexical_name": "CofibrantBrownFactorization",
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
  "slug": "cofibrantbrownfactorization--e8ef1d53d9acbe795893cc7d",
  "source": {
    "blob": "437ba45e315feb4edf5bbadc7364895c06a58523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Topology/AlgebraicTopology/BrownLemma/Variantd3d9f0d6372087ecfa6a704a6dd258516465cf5b73e572becb7b4f74c547bc5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8ef1d53d9acbe795893cc7d625fe14a43632bb6b786f8964ab4db71c82a9b07",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/BrownLemma/Variantd3d9f0d6372087ecfa6a704a6dd258516465cf5b73e572becb7b4f74c547bc5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ad4275fc11bfc67fe00ee5721a459c104618f09db8f16606efccf2458ad516f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CofibrantBrownFactorization extends
    MapFactorizationData (cofibrations C) (trivialFibrations C) f where
  /-- a cofibration that is a section of `p` -/
  s : Y ⟶ Z
  s_p : s ≫ p = 𝟙 Y := by cat_disch
  cofibration_s : Cofibration s := by infer_instance

namespace CofibrantBrownFactorization

attribute [reassoc (attr := simp)] s_p
attribute [instance] cofibration_s

variable (h : CofibrantBrownFactorization f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/BrownLemma/Variantd3d9f0d6372087ecfa6a704a6dd258516465cf5b73e572becb7b4f74c547bc5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BrownLemma/Variantd3d9f0d6372087ecfa6a704a6dd258516465cf5b73e572becb7b4f74c547bc5f.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `437ba45e315feb4edf5bbadc7364895c06a58523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
