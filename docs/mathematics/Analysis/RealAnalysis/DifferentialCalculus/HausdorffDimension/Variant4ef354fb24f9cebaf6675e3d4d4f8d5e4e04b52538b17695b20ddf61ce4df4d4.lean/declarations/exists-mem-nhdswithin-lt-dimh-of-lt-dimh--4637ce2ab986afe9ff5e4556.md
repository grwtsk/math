# exists_mem_nhdsWithin_lt_dimH_of_lt_dimH

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12488d54-3e24-c87c-aaaf-3f6b2967d7f9",
  "kind": "theorem",
  "lexical_name": "exists_mem_nhdsWithin_lt_dimH_of_lt_dimH",
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
  "slug": "exists-mem-nhdswithin-lt-dimh-of-lt-dimh--4637ce2ab986afe9ff5e4556",
  "source": {
    "blob": "ba539c7f285a8afa285b03b8f86e043c1b272726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant4ef354fb24f9cebaf6675e3d4d4f8d5e4e04b52538b17695b20ddf61ce4df4d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4637ce2ab986afe9ff5e45568e5997573a5767842bc78c35359ead9061d0cde0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant4ef354fb24f9cebaf6675e3d4d4f8d5e4e04b52538b17695b20ddf61ce4df4d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12488d54-3e24-c87c-aaaf-3f6b2967d7f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_nhdsWithin_lt_dimH_of_lt_dimH {s : Set X} {r : ℝ≥0∞} (h : r < dimH s) :
    ∃ x ∈ s, ∀ t ∈ 𝓝[s] x, r < dimH t := by
  contrapose! h; choose! t htx htr using h
  rcases countable_cover_nhdsWithin htx with ⟨S, hSs, hSc, hSU⟩
  calc
    dimH s ≤ dimH (⋃ x ∈ S, t x) := dimH_mono hSU
    _ = ⨆ x ∈ S, dimH (t x) := (dimH_bUnion hSc _)
    _ ≤ r := iSup₂_le fun x hx => htr x <| hSs hx
set_option linter.uppercaseLean3 false in
#align exists_mem_nhds_within_lt_dimH_of_lt_dimH exists_mem_nhdsWithin_lt_dimH_of_lt_dimH

/-- In an (extended) metric space with second countable topology, the Hausdorff dimension
of a set `s` is the supremum over `x ∈ s` of the limit superiors of `dimH t` along
`(𝓝[s] x).smallSets`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant4ef354fb24f9cebaf6675e3d4d4f8d5e4e04b52538b17695b20ddf61ce4df4d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant4ef354fb24f9cebaf6675e3d4d4f8d5e4e04b52538b17695b20ddf61ce4df4d4.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba539c7f285a8afa285b03b8f86e043c1b272726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
