# Enclosure.ofRegion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d27bf2dc4bbad5db381ab9b18092a12d3909d3449a1ef93300b6b9ab5c1775d",
  "kind": "def",
  "lexical_name": "Enclosure.ofRegion",
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
  "slug": "enclosure-ofregion--687dda53a2bc755b37830cc3",
  "source": {
    "blob": "1061f257eb2233992c7d2bc887372ea68e1995ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 163,
    "path": "GRWTSK/Analysis/Complex/SymmetricPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:687dda53a2bc755b37830cc36d6a06a29927de1dd601e19edca738b40e4efc31",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d27bf2dc4bbad5db381ab9b18092a12d3909d3449a1ef93300b6b9ab5c1775d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Enclosure.ofRegion {F P : ℂ → ℂ} {U : Set ℂ} {c d : ℂ} (e0 e1 : ℝ)
    (he0 : 0 ≤ e0) (he1 : 0 ≤ e1) (hd : d ≠ 0) (hU : Convex ℝ U)
    (hF : ∀ z ∈ U, DifferentiableAt ℂ F z)
    (hP : ∀ z ∈ U, DifferentiableAt ℂ P z)
    (hvalue : ∀ z ∈ U, ‖F z-P z‖ ≤ e0)
    (hderiv : ∀ z ∈ U, ‖deriv F z-deriv P z‖ ≤ e1)
    (hp : c+d ∈ U) (hm : c-d ∈ U) : Enclosure F P c d where
  valueError := e0
  secantError := e1
  value_nonneg := he0
  secant_nonneg := he1
  even_error := even_error_of_values (hvalue _ hp) (hvalue _ hm)
  odd_error := odd_error_of_derivatives hd hU hF hP hderiv hp hm

/-- Exact telescoping in channel coordinates, with no source identification dropped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/SymmetricPair.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1061f257eb2233992c7d2bc887372ea68e1995ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
