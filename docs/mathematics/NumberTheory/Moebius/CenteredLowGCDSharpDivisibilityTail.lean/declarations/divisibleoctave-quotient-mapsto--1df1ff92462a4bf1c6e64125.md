# divisibleOctave_quotient_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42402f27-65fe-0a8b-9201-4b2800a01f61",
  "kind": "theorem",
  "lexical_name": "divisibleOctave_quotient_mapsTo",
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
  "slug": "divisibleoctave-quotient-mapsto--1df1ff92462a4bf1c6e64125",
  "source": {
    "blob": "2642927ce9edc1680b15c445153abd720c29efed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 169,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1df1ff92462a4bf1c6e6412585b7b9bf3d383f1eba07f318dfec5f9fb72706db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42402f27-65fe-0a8b-9201-4b2800a01f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisibleOctave_quotient_mapsTo
    {X r : ℕ}
    (hr : 0 < r) :
    Set.MapsTo
      (fun n => n / r)
      (↑(divisibleOctaveIndexSet X r) : Set ℕ)
      (↑(Finset.Ioc 0 (4 * X / r)) : Set ℕ) := by
  intro n hn
  rcases mem_divisibleOctaveIndexSet_iff.mp hn with
    ⟨hnOct, hrn⟩
  have hnpos := (octave_mem_bounds hnOct).1
  exact Finset.mem_Ioc.mpr
    ⟨Nat.div_pos (Nat.le_of_dvd hnpos hrn) hr,
      Nat.div_le_div_right (octave_mem_bounds hnOct).2⟩

/-- Quotient by a positive `r` is injective on multiples of `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2642927ce9edc1680b15c445153abd720c29efed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
