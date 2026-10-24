# GeometricResidualSpecification.residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0062405940d9ebe07d0d0462861fd560bce72883ff06ab87e0e0437d485add47",
  "kind": "def",
  "lexical_name": "GeometricResidualSpecification.residual",
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
  "slug": "geometricresidualspecification-residual--9b535ee3cc3058146e23d794",
  "source": {
    "blob": "3e0700b0bfab0ed745518b7ba3730f9fed5bc68d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b535ee3cc3058146e23d794f1716ed9e1fb6364661710a984e311d1044f5bbd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0062405940d9ebe07d0d0462861fd560bce72883ff06ab87e0e0437d485add47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GeometricResidualSpecification.residual
    {Left Right : Type*} {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (specification : GeometricResidualSpecification Left Right
      leftIndex rightIndex)
    (x : ℕ) : Matrix Left Right ℂ :=
  productCutoffMatrix leftIndex rightIndex x -
    specification.geometricKernel x

/-- One-moment residual increment: exact product fiber minus its prescribed
localized packet increment. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e0700b0bfab0ed745518b7ba3730f9fed5bc68d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
