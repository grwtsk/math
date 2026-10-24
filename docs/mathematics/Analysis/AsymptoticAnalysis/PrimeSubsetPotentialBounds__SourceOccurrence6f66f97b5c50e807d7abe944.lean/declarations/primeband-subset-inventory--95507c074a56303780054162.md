# primeBand_subset_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4da5db98-3dc2-bb48-821e-a66aa9e6bde4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f5e1527-2e77-b7f8-7498-141cc8075876",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c627eda8-a9df-b764-a7d8-f9982d00c66d",
  "kind": "theorem",
  "lexical_name": "primeBand_subset_inventory",
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
  "slug": "primeband-subset-inventory--95507c074a56303780054162",
  "source": {
    "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 176,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95507c074a5630378005416264a78669b1de72e81548397485505ecf50b10eb3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c627eda8-a9df-b764-a7d8-f9982d00c66d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeBand_subset_inventory (a T : ℝ) :
    Obstruction.primeBand a T ⊆ primeInventory T := by
  intro p hp
  have hmem := (Finset.mem_filter.mp hp).1
  have hprime := Nat.prime_of_mem_primesLE hmem
  have hpupper : (p : ℝ) ≤ Real.exp T/2 :=
    (Nat.le_floor_iff (by positivity : 0 ≤ Real.exp T/2)).mp
      (Nat.le_of_mem_primesLE hmem)
  apply Finset.mem_filter.mpr
  refine ⟨mem_integerInventory.mpr ⟨hprime.one_le, ?_⟩, hprime⟩
  linarith [Real.exp_pos T]

/-- The actual three-quarter band obeys every positive singleton mass cap
eventually. This does not require a Mertens/PNT block-mass lower estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a75c268fe2e095f5faa49f0dbfa6cc5212d4b623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
