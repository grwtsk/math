# transportHarmonicKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d758c3e6912ab38ecc08f5a5538052ca56b3abaa669d78b2a7619424c020d115",
  "kind": "abbrev",
  "lexical_name": "transportHarmonicKernel",
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
  "slug": "transportharmonickernel--a4069237f313dcf6338a47f0",
  "source": {
    "blob": "6ca3ffd9a473b567f4a8fc4b36be7008b8dd5cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 92,
    "path": "GRWTSK/Geometry/Hodge/HZeroTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4069237f313dcf6338a47f0079a5cb329d304b822cc6fe3b19633ce6d23f035",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/HZeroTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d758c3e6912ab38ecc08f5a5538052ca56b3abaa669d78b2a7619424c020d115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev transportHarmonicKernel
    (P : HodgeEquiv A B) (K : HarmonicKernelExact A) : HarmonicKernelExact B :=
  P.transportHarmonicKernel K

end HodgeEquiv

section RationalTransport

variable {Cycle : Type c} {HodgeClass : Type h'}
variable [AddCommGroup Cycle] [Module ℚ Cycle]
variable [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
variable {QA₀ : Type v₀} {QA₁ : Type v₁}
variable {QB₀ : Type w₀} {QB₁ : Type w₁}
variable [AddCommGroup QA₀] [Module ℚ QA₀]
variable [AddCommGroup QA₁] [Module ℚ QA₁]
variable [AddCommGroup QB₀] [Module ℚ QB₀]
variable [AddCommGroup QB₁] [Module ℚ QB₁]
variable {H : RationalHodgeData Cycle HodgeClass}
variable {QA : RationalTwoTermHodgeData QA₀ QA₁}
variable {QB : RationalTwoTermHodgeData QB₀ QB₁}

namespace CycleHZeroComparison

/-- Transport a cycle/Hodge-to-`H⁰` comparison through an exact rational Hodge equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/HZeroTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/HZeroTransport.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ca3ffd9a473b567f4a8fc4b36be7008b8dd5cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
