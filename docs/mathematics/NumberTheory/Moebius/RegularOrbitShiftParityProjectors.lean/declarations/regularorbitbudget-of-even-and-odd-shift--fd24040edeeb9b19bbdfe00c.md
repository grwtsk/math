# regularOrbitBudget_of_even_and_odd_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b80a216d-d0c3-a357-7f01-f593acb10ec1",
  "kind": "theorem",
  "lexical_name": "regularOrbitBudget_of_even_and_odd_shift",
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
  "slug": "regularorbitbudget-of-even-and-odd-shift--fd24040edeeb9b19bbdfe00c",
  "source": {
    "blob": "c704448768339770aa5b21459dfdc2b9fd291867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 316,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd24040edeeb9b19bbdfe00c893371f4f2e2180e6433a562a34a75e8bc15ed22",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b80a216d-d0c3-a357-7f01-f593acb10ec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularOrbitBudget_of_even_and_odd_shift
    (hEven : DyadicNaturalScaleTwoNonunitEvenShiftBudget)
    (hOdd : DyadicNaturalScaleTwoNonunitOddShiftBudget) :
    DyadicNaturalScaleTwoNonunitRegularOrbitBudget := by
  intro δ hδ
  obtain ⟨C₀, hC₀, h₀⟩ := hEven δ hδ
  obtain ⟨C₁, hC₁, h₁⟩ := hOdd δ hδ
  refine ⟨C₀ + C₁, add_nonneg hC₀ hC₁, ?_⟩
  intro j b hb
  rw [twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd]
  exact
    (add_le_add (h₀ j b hb) (h₁ j b hb)).trans_eq (by ring)

/-- Conditional composition with the existing zero-mode, mod-four exceptional,
and two-unit premises. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704448768339770aa5b21459dfdc2b9fd291867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
