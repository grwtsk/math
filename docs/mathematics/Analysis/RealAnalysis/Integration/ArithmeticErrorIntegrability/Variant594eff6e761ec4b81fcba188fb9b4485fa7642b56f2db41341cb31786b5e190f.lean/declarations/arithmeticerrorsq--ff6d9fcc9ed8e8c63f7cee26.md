# arithmeticErrorSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6be8bb7c37cca9e9d879eabf716ba590759f35af1f4201941b4d6c4dd93ddff4",
  "kind": "def",
  "lexical_name": "arithmeticErrorSq",
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
  "slug": "arithmeticerrorsq--ff6d9fcc9ed8e8c63f7cee26",
  "source": {
    "blob": "4af44af71e9a0d1c4d1117cbca295dcd7a4a84d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 610,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff6d9fcc9ed8e8c63f7cee2622148c3084993c44b335da5a7a409936e20ebbad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6be8bb7c37cca9e9d879eabf716ba590759f35af1f4201941b4d6c4dd93ddff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arithmeticErrorSq (X : ℕ) (ε h : ℝ) : ℝ :=
  (1/(2*Real.pi)) * ∫ t : ℝ,
    ‖boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
      correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I))‖^2

/-- Every finite corrected family has a genuine signed arithmetic-error square integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af44af71e9a0d1c4d1117cbca295dcd7a4a84d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
