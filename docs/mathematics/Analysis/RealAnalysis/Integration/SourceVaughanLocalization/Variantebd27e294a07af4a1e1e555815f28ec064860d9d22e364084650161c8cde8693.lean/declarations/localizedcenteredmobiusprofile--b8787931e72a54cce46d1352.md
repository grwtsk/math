# localizedCenteredMobiusProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9e528b1c25bb2144bfd801561a4ee24dc7444185b320c952be78b2a517888a6",
  "kind": "def",
  "lexical_name": "localizedCenteredMobiusProfile",
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
  "slug": "localizedcenteredmobiusprofile--b8787931e72a54cce46d1352",
  "source": {
    "blob": "6d8ca7ae72998954b2bacbc5a4df633b896455ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variantebd27e294a07af4a1e1e555815f28ec064860d9d22e364084650161c8cde8693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8787931e72a54cce46d135210e0cc18f8bcb4d2bdf13a184990c60d949eb1f0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variantebd27e294a07af4a1e1e555815f28ec064860d9d22e364084650161c8cde8693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9e528b1c25bb2144bfd801561a4ee24dc7444185b320c952be78b2a517888a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localizedCenteredMobiusProfile (A : ℝ) : ℝ → ℝ :=
  localizedReflectedProfile A (vaughanCutoff A + 1) (longInventory A)
    (fun n ↦ centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))

/-- Joint localization retains the full signed product pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variantebd27e294a07af4a1e1e555815f28ec064860d9d22e364084650161c8cde8693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variantebd27e294a07af4a1e1e555815f28ec064860d9d22e364084650161c8cde8693.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8ca7ae72998954b2bacbc5a4df633b896455ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
