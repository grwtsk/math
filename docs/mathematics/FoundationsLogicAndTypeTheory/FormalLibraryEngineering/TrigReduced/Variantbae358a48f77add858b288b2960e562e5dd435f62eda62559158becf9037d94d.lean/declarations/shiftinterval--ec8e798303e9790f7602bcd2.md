# shiftInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:637932fddb521469d2d2713b338de0fc09fc106c6aff254acb7a7f09bc2f707e",
  "kind": "def",
  "lexical_name": "shiftInterval",
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
  "slug": "shiftinterval--ec8e798303e9790f7602bcd2",
  "source": {
    "blob": "92edf658b7fdbb8615acee717947249c8a434d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec8e798303e9790f7602bcd2b7821cbe32cc25acf19b0bc3f1873ecfa1d94eb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:637932fddb521469d2d2713b338de0fc09fc106c6aff254acb7a7f09bc2f707e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftInterval (I : IntervalRat) (k : ℤ) : IntervalRat :=
  if hk : k ≥ 0 then
    ⟨I.lo - k * twoPiRatHi, I.hi - k * twoPiRatLo,
      by have h1 := twoPiRatLo_le_twoPiRatHi
         have hk_cast : (0 : ℚ) ≤ k := Int.cast_nonneg hk
         have h2 : (k : ℚ) * twoPiRatLo ≤ k * twoPiRatHi :=
           mul_le_mul_of_nonneg_left h1 hk_cast
         linarith [I.le]⟩
  else
    ⟨I.lo - k * twoPiRatLo, I.hi - k * twoPiRatHi,
      by have h1 := twoPiRatLo_le_twoPiRatHi
         have hkneg : k < 0 := Int.not_le.mp hk
         have hk_cast : (k : ℚ) ≤ 0 := Int.cast_nonpos.mpr (le_of_lt hkneg)
         have h2 : (k : ℚ) * twoPiRatHi ≤ k * twoPiRatLo :=
           mul_le_mul_of_nonpos_left h1 hk_cast
         linarith [I.le]⟩

/-- Reduce interval to be approximately in [-π, π] by subtracting multiples of 2π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92edf658b7fdbb8615acee717947249c8a434d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
