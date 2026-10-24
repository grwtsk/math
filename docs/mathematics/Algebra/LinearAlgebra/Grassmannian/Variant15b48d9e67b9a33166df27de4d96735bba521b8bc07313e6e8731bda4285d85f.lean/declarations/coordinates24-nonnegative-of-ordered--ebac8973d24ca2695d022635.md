# coordinates24_nonnegative_of_ordered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6b23dc9-4064-c533-5556-925833646b06",
  "kind": "theorem",
  "lexical_name": "coordinates24_nonnegative_of_ordered",
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
  "slug": "coordinates24-nonnegative-of-ordered--ebac8973d24ca2695d022635",
  "source": {
    "blob": "508418463704a47a9302713d79259c9594e13820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebac8973d24ca2695d0226352064dd77dc83350f277b1153eda923821d739600",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b23dc9-4064-c533-5556-925833646b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinates24_nonnegative_of_ordered
    (A : Matrix (Fin 2) (Fin 4) ℝ) (h : AllOrderedMinorsNonneg A) :
    (PluckerCoordinates24.ofMatrix A).Nonnegative := by
  have hp : ∀ i j : Fin 4, i < j → 0 ≤ minor₂ A i j := by
    intro i j hij
    have hh := h (pairColumns24 i j hij)
    rw [orderedMinor_two] at hh
    exact hh
  exact ⟨hp 0 1 (by decide), hp 0 2 (by decide), hp 0 3 (by decide),
    hp 1 2 (by decide), hp 1 3 (by decide), hp 2 3 (by decide)⟩

/-- Exactly the conditions on all minors of a two-by-two matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `508418463704a47a9302713d79259c9594e13820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
