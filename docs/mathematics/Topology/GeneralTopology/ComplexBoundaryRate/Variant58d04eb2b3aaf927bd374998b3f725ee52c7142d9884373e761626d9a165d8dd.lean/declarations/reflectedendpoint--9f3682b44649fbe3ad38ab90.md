# reflectedEndpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43af51613920838c41807c48b47fe9f1da06b7826f0fb585a70f47995cd2aa0d",
  "kind": "def",
  "lexical_name": "reflectedEndpoint",
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
  "slug": "reflectedendpoint--9f3682b44649fbe3ad38ab90",
  "source": {
    "blob": "5ed3869e904b6ae76b74f065deb0f143921b121f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variant58d04eb2b3aaf927bd374998b3f725ee52c7142d9884373e761626d9a165d8dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f3682b44649fbe3ad38ab90967a9d0f75ffa6ba2a9dd1a9e6f72f2d9587b0b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ComplexBoundaryRate/Variant58d04eb2b3aaf927bd374998b3f725ee52c7142d9884373e761626d9a165d8dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43af51613920838c41807c48b47fe9f1da06b7826f0fb585a70f47995cd2aa0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflectedEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  1+10/((A : ℂ)*z)+45/((A : ℂ)*z)^2+
    105/((A : ℂ)*z)^3+105/((A : ℂ)*z)^4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ComplexBoundaryRate/Variant58d04eb2b3aaf927bd374998b3f725ee52c7142d9884373e761626d9a165d8dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variant58d04eb2b3aaf927bd374998b3f725ee52c7142d9884373e761626d9a165d8dd.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ed3869e904b6ae76b74f065deb0f143921b121f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
