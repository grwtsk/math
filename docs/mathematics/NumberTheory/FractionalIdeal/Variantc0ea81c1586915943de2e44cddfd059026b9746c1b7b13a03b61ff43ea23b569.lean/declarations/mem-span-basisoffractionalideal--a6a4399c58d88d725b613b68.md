# mem_span_basisOfFractionalIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc3ff205-6452-3691-4c19-9784d61afdaa",
  "kind": "theorem",
  "lexical_name": "mem_span_basisOfFractionalIdeal",
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
  "slug": "mem-span-basisoffractionalideal--a6a4399c58d88d725b613b68",
  "source": {
    "blob": "9cdd27f1039b9bba85540074034af8587e91420f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a4399c58d88d725b613b6877dc7cdd0bac22b3e2467eaaf783a7f97c4e747a",
  "verification": {
    "reference": "docs/verification/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc3ff205-6452-3691-4c19-9784d61afdaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_basisOfFractionalIdeal {I : (FractionalIdeal (𝓞 K)⁰ K)ˣ} {x : K} :
    x ∈ Submodule.span ℤ (Set.range (basisOfFractionalIdeal K I)) ↔ x ∈ (I : Set K) := by
  rw [basisOfFractionalIdeal, (fractionalIdealBasis K I.1).ofIsLocalizedModule_span ℚ ℤ⁰ _]
  simp

open Module in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cdd27f1039b9bba85540074034af8587e91420f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
