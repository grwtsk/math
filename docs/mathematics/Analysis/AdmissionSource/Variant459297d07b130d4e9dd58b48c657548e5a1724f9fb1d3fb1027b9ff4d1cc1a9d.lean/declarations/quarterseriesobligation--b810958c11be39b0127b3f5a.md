# QuarterSeriesObligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6de382ca6eaf2344c73ce4745637776c86afa446e9187640fdf6d1e25a185b97",
  "kind": "def",
  "lexical_name": "QuarterSeriesObligation",
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
  "slug": "quarterseriesobligation--b810958c11be39b0127b3f5a",
  "source": {
    "blob": "e95dfffed82fdf68180bfffc55d449073cd21bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 33,
    "path": "GRWTSK/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b810958c11be39b0127b3f5ab6abeb8d73dfb17cd45dd4294e19c1f76c8987ca",
  "verification": {
    "reference": "docs/verification/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6de382ca6eaf2344c73ce4745637776c86afa446e9187640fdf6d1e25a185b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def QuarterSeriesObligation : Prop :=
  ∀ ξ : ℝ, HasSum (fun n : ℕ ↦ kernel (ξ / 2) (n + 1 / 4))
    (archimedeanMultiplier ξ + archimedeanConstant)

/-- Reordering complex scalar factors preserves the source's quarter-line argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95dfffed82fdf68180bfffc55d449073cd21bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
