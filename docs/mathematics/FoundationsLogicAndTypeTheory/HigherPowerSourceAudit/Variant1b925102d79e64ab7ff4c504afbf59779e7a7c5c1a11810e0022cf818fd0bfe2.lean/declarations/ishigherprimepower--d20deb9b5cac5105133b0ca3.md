# IsHigherPrimePower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5843084f98766a278bb89f60fe18453adb0e3a1497ab975d943e11259fda3305",
  "kind": "def",
  "lexical_name": "IsHigherPrimePower",
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
  "slug": "ishigherprimepower--d20deb9b5cac5105133b0ca3",
  "source": {
    "blob": "8463cd2d6637b0dc6cf1a00e28883146cd7859c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d20deb9b5cac5105133b0ca38001207115f9673183a9c937d86c0036e6df2fda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5843084f98766a278bb89f60fe18453adb0e3a1497ab975d943e11259fda3305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsHigherPrimePower (n : ℕ) : Prop := ∃ p k : ℕ, p.Prime ∧ 3 ≤ k ∧ p ^ k = n

/-- The exact higher-power restriction of the source's original strict cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8463cd2d6637b0dc6cf1a00e28883146cd7859c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
