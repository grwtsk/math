# coe_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb9ebb61-3b7d-93e3-ed12-31de0928a77f",
  "kind": "theorem",
  "lexical_name": "coe_natCast",
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
  "slug": "coe-natcast--cb00921999550be08f77a1de",
  "source": {
    "blob": "849399954f3d8406be775591d95ea7a7e5ef9c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 356,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant1b2fec371b0e9dd3a45a2fc101d1a9c758822307e55788209155cf9b2ca0e419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb00921999550be08f77a1de4943fc7898857b84dd46d0335fcc00934c1410fb",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant1b2fec371b0e9dd3a45a2fc101d1a9c758822307e55788209155cf9b2ca0e419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb9ebb61-3b7d-93e3-ed12-31de0928a77f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_natCast (n : ℕ) : ((n : ℤ) : X q) = (n : X q) := by ext <;> simp

/-- We define `ω = 2 + √3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant1b2fec371b0e9dd3a45a2fc101d1a9c758822307e55788209155cf9b2ca0e419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant1b2fec371b0e9dd3a45a2fc101d1a9c758822307e55788209155cf9b2ca0e419.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849399954f3d8406be775591d95ea7a7e5ef9c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
