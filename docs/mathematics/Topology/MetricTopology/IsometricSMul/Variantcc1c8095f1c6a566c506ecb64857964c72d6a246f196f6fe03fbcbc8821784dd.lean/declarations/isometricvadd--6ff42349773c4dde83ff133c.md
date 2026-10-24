# IsometricVAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b90b2ad897f4f23d5aa764dec18946e438afee8cb6558486766918d6abe449cc",
  "kind": "class",
  "lexical_name": "IsometricVAdd",
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
  "slug": "isometricvadd--6ff42349773c4dde83ff133c",
  "source": {
    "blob": "c911b86698f92e45471bf7743c28f897edb266b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ff42349773c4dde83ff133cfebeea515b40a71c96ffb63c938e0ee8fd9505aa",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b90b2ad897f4f23d5aa764dec18946e438afee8cb6558486766918d6abe449cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsometricVAdd [PseudoEMetricSpace X] [VAdd M X] : Prop where
  protected isometry_vadd : ∀ c : M, Isometry ((c +ᵥ ·) : X → X)
#align has_isometric_vadd IsometricVAdd

/-- A multiplicative action is isometric if each map `x ↦ c • x` is an isometry. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c911b86698f92e45471bf7743c28f897edb266b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
