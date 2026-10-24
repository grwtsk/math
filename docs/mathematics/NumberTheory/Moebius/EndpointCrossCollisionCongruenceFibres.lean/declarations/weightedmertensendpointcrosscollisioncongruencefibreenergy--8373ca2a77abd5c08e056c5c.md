# weightedMertensEndpointCrossCollisionCongruenceFibreEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:249fe4783a04b96b539d2d580e1458d80e59db941af120a8be2a2932ae68a8e4",
  "kind": "def",
  "lexical_name": "weightedMertensEndpointCrossCollisionCongruenceFibreEnergy",
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
  "slug": "weightedmertensendpointcrosscollisioncongruencefibreenergy--8373ca2a77abd5c08e056c5c",
  "source": {
    "blob": "d7e4ccda28428db2cd1d6494881833429a135f6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 232,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8373ca2a77abd5c08e056c5cfb2435c8b1c4f12ee72f881c188b334d3304706d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:249fe4783a04b96b539d2d580e1458d80e59db941af120a8be2a2932ae68a8e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weightedMertensEndpointCrossCollisionCongruenceFibreEnergy
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointCrossCollisionCongruenceFibreEnergy b

/-- Exact weighted equality with the divisor-square sieve observable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e4ccda28428db2cd1d6494881833429a135f6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
