# FibrantBrownFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8db88f46b756ca6489278d5755464fbe8e2e58cea98d6c50b7a6ad0209fcab6",
  "kind": "structure",
  "lexical_name": "FibrantBrownFactorization",
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
  "slug": "fibrantbrownfactorization--25fc8fd52750d0d608a78a24",
  "source": {
    "blob": "198ae2f8706fd639c5c1572898bdba7e831018d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/Topology/AlgebraicTopology/BrownLemma/Variant713a69122d6f09545693ea3b3c03ff02c239a6798623791de961f4220c353ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25fc8fd52750d0d608a78a249f3500600fca9d91fb6d92a8ca30b25706894211",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/BrownLemma/Variant713a69122d6f09545693ea3b3c03ff02c239a6798623791de961f4220c353ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8db88f46b756ca6489278d5755464fbe8e2e58cea98d6c50b7a6ad0209fcab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FibrantBrownFactorization extends
    MapFactorizationData (trivialCofibrations C) (fibrations C) f where
  /-- a fibration that is a retraction of `i` -/
  r : Z ⟶ X
  i_r : i ≫ r = 𝟙 X := by cat_disch
  fibration_r : Fibration r := by infer_instance

namespace FibrantBrownFactorization

attribute [reassoc (attr := simp)] i_r
attribute [instance] fibration_r

variable (h : FibrantBrownFactorization f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/BrownLemma/Variant713a69122d6f09545693ea3b3c03ff02c239a6798623791de961f4220c353ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BrownLemma/Variant713a69122d6f09545693ea3b3c03ff02c239a6798623791de961f4220c353ec1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `198ae2f8706fd639c5c1572898bdba7e831018d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
