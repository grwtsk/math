# rhThrough_of_height_credit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:659af58c-d1e4-730f-fc5b-9f5ea6dd3496",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_height_credit",
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
  "slug": "rhthrough-of-height-credit--2bd3d4ff5f966a4ffc5cb0e1",
  "source": {
    "blob": "0935c7c7a7fc5102dc5ed713b2e9103fa401b380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 79,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd3d4ff5f966a4ffc5cb0e1e86fc2f0d0c6b621978d19f0f2ce135d47edb095",
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

Occurrence: `result:659af58c-d1e4-730f-fc5b-9f5ea6dd3496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_height_credit (N : ℕ) (known : Finset ZeroPoint) (credit upper : ℕ)
    (knownHeight : ∀ z ∈ known, height z ≤ (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : heightCount (N : ℝ) ≤ upper) (strict : upper < credit + 2) : RHThrough N := by
  classical
  have subset : known ⊆ regionHead (N : ℝ) Set.univ := by
    intro z hz
    exact (mem_regionHead (N : ℝ) Set.univ z).mpr ⟨knownHeight z hz, Set.mem_univ _⟩
  have regional : regionCount (N : ℝ) Set.univ ≤ upper := by
    simpa only [regionCount_univ] using countUpper
  have onLine := all_on_line_of_region_credit (N : ℝ) Set.univ known credit upper subset
    knownOnLine (fun s _ => Set.mem_univ _) creditLower regional strict
  intro s zero heightBound
  let z : ZeroPoint := ⟨s, zero⟩
  have member : z ∈ regionHead (N : ℝ) Set.univ :=
    (mem_regionHead (N : ℝ) Set.univ z).mpr ⟨heightBound, Set.mem_univ _⟩
  exact onLine z member

/-- Natural per-root lower credits add only over DISTINCT full source identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0935c7c7a7fc5102dc5ed713b2e9103fa401b380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
