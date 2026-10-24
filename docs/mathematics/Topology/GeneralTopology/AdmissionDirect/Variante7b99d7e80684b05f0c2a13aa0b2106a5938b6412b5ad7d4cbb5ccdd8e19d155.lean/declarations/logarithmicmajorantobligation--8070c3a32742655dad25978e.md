# LogarithmicMajorantObligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da4fc301dde8bb1a5e870bc09f51fef237075561d1c32a0f33ff97d1b01fb359",
  "kind": "def",
  "lexical_name": "LogarithmicMajorantObligation",
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
  "slug": "logarithmicmajorantobligation--8070c3a32742655dad25978e",
  "source": {
    "blob": "bcdd52c6b2a8af22138299665982680a98161cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8070c3a32742655dad25978e57e0dc1252bbe7702e723c833bfe803f8975ed6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da4fc301dde8bb1a5e870bc09f51fef237075561d1c32a0f33ff97d1b01fb359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LogarithmicMajorantObligation : Prop :=
  ∃ C₀ C₁ : ℝ, 0 ≤ C₀ ∧ 0 ≤ C₁ ∧
    ∀ ξ : ℝ, |archimedeanMultiplier ξ| ≤ C₀ + C₁ * Real.log (1 + 4 * ξ ^ 2)

/-- The direct route can instead prove a two-sided-tail bound at a finite radius.
This does not assert the source's sharp global equation (10). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcdd52c6b2a8af22138299665982680a98161cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
