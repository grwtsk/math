# Approximates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:937dd5c7a67bf645d3b7224c80577c3fdd442af6995be7249095ba154f69742f",
  "kind": "coinductive",
  "lexical_name": "Approximates",
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
  "slug": "approximates--979840dbb68f4e25efe5c68b",
  "source": {
    "blob": "75f8e7628b4d4cf9fde4e28d1b24ca68f23abc7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 827,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant0713d7a639fb33d8319dbb71a4b38497cfd54726b90e8216b1ce414f8013c87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:979840dbb68f4e25efe5c68beebfe337b605b0fdc085d2c681fd769975f47745",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant0713d7a639fb33d8319dbb71a4b38497cfd54726b90e8216b1ce414f8013c87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `coinductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:937dd5c7a67bf645d3b7224c80577c3fdd442af6995be7249095ba154f69742f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 827–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
coinductive Approximates : {basis : Basis} → (ms : MultiseriesExpansion basis) → Prop
/-- Constant multiseries always approximates its attached function. -/
| const (ms : MultiseriesExpansion []) : Approximates ms
/-- Empty multiseries approximates (eventually) zero function. -/
| nil {basis_hd : ℝ → ℝ} {basis_tl : Basis} {f : ℝ → ℝ} (hf : f =ᶠ[atTop] 0) :
  Approximates (mk (@Multiseries.nil basis_hd basis_tl) f)
/-- `cons (exp, coef) tl` approximates `f` when `coef` approximates some function `fC`, `f` is
majorized with exponent `exp` by `basis_hd`, and `tl` approximates `f - fC * basis_hd ^ exp`. -/
| cons {basis_hd f : ℝ → ℝ} {basis_tl : Basis} {exp : ℝ} {coef : MultiseriesExpansion basis_tl}
    {tl : Multiseries basis_hd basis_tl}
    (h_coef : Approximates coef) (h_maj : Majorized f basis_hd exp)
    (h_tl : Approximates (mk tl (f - basis_hd ^ exp * coef.toFun))) :
  Approximates (mk (.cons exp coef tl) f)

variable {f basis_hd : ℝ → ℝ} {basis_tl : Basis}

attribute [simp] Approximates.const

namespace Approximates

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant0713d7a639fb33d8319dbb71a4b38497cfd54726b90e8216b1ce414f8013c87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant0713d7a639fb33d8319dbb71a4b38497cfd54726b90e8216b1ce414f8013c87f.lean#L827).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75f8e7628b4d4cf9fde4e28d1b24ca68f23abc7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
