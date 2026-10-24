# Homology.FiniteOS.Expression.toCambridgeTokens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c97fbf3c5136f387b6dcbd3f34ba37bedb62452dd8e67e1c248d1ab4f13c999",
  "kind": "def",
  "lexical_name": "Homology.FiniteOS.Expression.toCambridgeTokens",
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
  "slug": "homology-finiteos-expression-tocambridgetokens--2fe369868d442eeeb29c04a4",
  "source": {
    "blob": "77fa4b2bbb8ae2d75d8e01f11f085f4fbfe1a5a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 451,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante0fa518415802eb23fbc714b4e12e7b4e348a2bdb746ff0e7b0feae49775ee92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fe369868d442eeeb29c04a40e2652703cece9f52c7f863fd9d2b402808f94a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante0fa518415802eb23fbc714b4e12e7b4e348a2bdb746ff0e7b0feae49775ee92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c97fbf3c5136f387b6dcbd3f34ba37bedb62452dd8e67e1c248d1ab4f13c999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homology.FiniteOS.Expression.toCambridgeTokens :
    Homology.FiniteOS.Expression α → List (Homology.FiniteOS.Token α)
  | .atom a => [.atom a]
  | .symbol s => [.symbol s]
  | Homology.FiniteOS.Expression.op operator args =>
      [.beginOp operator] ++
        Homology.FiniteOS.Expression.toCambridgeTokensList args ++
        [.endNode]
  | .maximal_limit _ =>
      [.beginMaximalLimit, .endNode]
  | .finite_prismatic_surface_model n S =>
      [.beginFinitePrismaticSurfaceModel n S.prism.prism_d, .endNode]
  | .euler_obstruction e =>
      [.eulerObstruction e.sphereDimension e.eulerCharacteristic]

/-- Serialize a list of homological OS trees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante0fa518415802eb23fbc714b4e12e7b4e348a2bdb746ff0e7b0feae49775ee92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante0fa518415802eb23fbc714b4e12e7b4e348a2bdb746ff0e7b0feae49775ee92.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77fa4b2bbb8ae2d75d8e01f11f085f4fbfe1a5a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
