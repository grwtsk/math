# rhThrough_of_weighted_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bf5db1f-e0cf-9b76-4cd3-d9b19e877f54",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_weighted_inventory",
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
  "slug": "rhthrough-of-weighted-inventory--1a69478ee484488c04b2a494",
  "source": {
    "blob": "0935c7c7a7fc5102dc5ed713b2e9103fa401b380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a69478ee484488c04b2a494f16341cd7f65c3d160e44b9ecd8e7341d812e1e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bf5db1f-e0cf-9b76-4cd3-d9b19e877f54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_weighted_inventory (N : ℕ) (known : Finset ZeroPoint)
    (lower : ZeroPoint → ℕ) (upper : ℕ)
    (knownHeight : ∀ z ∈ known, height z ≤ (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (lowerBound : ∀ z ∈ known, lower z ≤ multiplicity z)
    (countUpper : heightCount (N : ℝ) ≤ upper)
    (strict : upper < (∑ z ∈ known, lower z) + 2) : RHThrough N := by
  apply rhThrough_of_height_credit N known (∑ z ∈ known, lower z) upper
    knownHeight knownOnLine ?_ countUpper strict
  exact Finset.sum_le_sum (fun z hz => lowerBound z hz)

/-- Convert a justified lower bound for the SAME local contour into an actual
multiplicity lower bound. The contour value is not treated as a numerical sample. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0935c7c7a7fc5102dc5ed713b2e9103fa401b380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
