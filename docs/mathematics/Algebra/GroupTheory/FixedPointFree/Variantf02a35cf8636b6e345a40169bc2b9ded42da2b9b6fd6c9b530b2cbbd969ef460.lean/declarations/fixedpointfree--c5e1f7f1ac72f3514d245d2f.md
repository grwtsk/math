# FixedPointFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ee951be2e9e904584d3cec272b57c7933fc807653c228eec5ac48b012be5479",
  "kind": "def",
  "lexical_name": "FixedPointFree",
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
  "slug": "fixedpointfree--c5e1f7f1ac72f3514d245d2f",
  "source": {
    "blob": "8ffe533345b4d9214d7cafbf36f8c8a9b766f41c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5e1f7f1ac72f3514d245d2f42544ac6cb4ed5de601a87a3c2a936cae6da820e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ee951be2e9e904584d3cec272b57c7933fc807653c228eec5ac48b012be5479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FixedPointFree [One G] := ∀ g, φ g = g → g = 1

/-- The commutator map `g ↦ g / φ g`. If `φ g = h * g * h⁻¹`, then `g / φ g` is exactly the
  commutator `[g, h] = g * h * g⁻¹ * h⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ffe533345b4d9214d7cafbf36f8c8a9b766f41c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
