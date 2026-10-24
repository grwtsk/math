# enclosures_of_assemblies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:521ad4e8-73a9-76dd-ef6c-d091e71bdea7",
  "kind": "theorem",
  "lexical_name": "enclosures_of_assemblies",
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
  "slug": "enclosures-of-assemblies--27b7e5c92ad82bacc03ea55f",
  "source": {
    "blob": "4359b252833c5dc8e46e76b2b0327829fccfe265",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27b7e5c92ad82bacc03ea55f8f985b02b2de7c41cec760fcbeff7f816c624cf6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPoleContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:521ad4e8-73a9-76dd-ef6c-d091e71bdea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enclosures_of_assemblies {n : ℕ} {data : List EdgeData}
    (bits cutoff corrections : ℕ → ℕ) (logs powers : ℕ → ℕ → Ball)
    (hN : ∀ i ∈ Finset.range n, 1 ≤ cutoff i)
    (hc : ∀ i ∈ Finset.range n, 0 < (edgeAt data i).center.1)
    (hvalue : ∀ i ∈ Finset.range n, (edgeAt data i).value =
      (assembledEdge (bits i) (edgeAt data i).center (edgeAt data i).inner
        (edgeAt data i).outer (cutoff i) (corrections i) (logs i) (powers i)).value)
    (hl : ∀ i ∈ Finset.range n, ∀ k ∈ Finset.Icc 1 (cutoff i),
      Holds (logs i k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ i ∈ Finset.range n, ∀ k ∈ Finset.Icc 1 (cutoff i),
      Holds (powers i k) ((k : ℂ) ^ (-toComplex (edgeAt data i).center))) :
    Enclosures n data := by
  intro i hi
  rw [hvalue i hi]
  exact assembledEdge_enclosure (bits i) _ _ _ (hN i hi) (corrections i)
    (logs i) (powers i) (hc i hi) (hl i hi) (hp i hi)

end GRWTSK.RiemannHypothesis.RationalPoleContour
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContour.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4359b252833c5dc8e46e76b2b0327829fccfe265` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
