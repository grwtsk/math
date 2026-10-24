# storage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c22d36d42fbc34ad3dfe010476e5161e7038f35c6899ef808ff983752bfa768",
  "kind": "def",
  "lexical_name": "storage",
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
  "slug": "storage--20ee24c6c401fc0fb88660e6",
  "source": {
    "blob": "ca027b57a6468b6fbf9494bf76530e2791dbd102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 31,
    "path": "GRWTSK/Analysis/AtomicCrossingLedger/Variant4c27b042e71ca85b4c03aa0a73cec98249f3ff75040f3e7942cb4b1cbec591eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20ee24c6c401fc0fb88660e6aa25559d9a26083ce0409c6ba7abf3c153845446",
  "verification": {
    "reference": "docs/verification/Analysis/AtomicCrossingLedger/Variant4c27b042e71ca85b4c03aa0a73cec98249f3ff75040f3e7942cb4b1cbec591eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c22d36d42fbc34ad3dfe010476e5161e7038f35c6899ef808ff983752bfa768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def storage (n : ℕ) : ℝ := cumulativeDiscrepancy ordinaryPrimeCoefficient n

/-- The is crossing in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def isCrossing (n : ℕ) : Prop := (storage (n - 1) ≤ 0 ∧ 0 < storage n) ∨ (0 < storage (n - 1)
∧ storage n ≤ 0)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AtomicCrossingLedger/Variant4c27b042e71ca85b4c03aa0a73cec98249f3ff75040f3e7942cb4b1cbec591eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AtomicCrossingLedger/Variant4c27b042e71ca85b4c03aa0a73cec98249f3ff75040f3e7942cb4b1cbec591eb.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca027b57a6468b6fbf9494bf76530e2791dbd102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
