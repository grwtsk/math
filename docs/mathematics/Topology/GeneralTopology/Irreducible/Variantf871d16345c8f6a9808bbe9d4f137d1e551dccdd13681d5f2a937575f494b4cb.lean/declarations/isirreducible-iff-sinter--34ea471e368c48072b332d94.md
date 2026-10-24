# isIrreducible_iff_sInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6faf624f1e5d57fec395926d9cc9b844e790cef7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed416605-4f10-860c-1b2f-40a1df08c456",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2c92865-8f78-4160-90b7-16489d4db979",
  "kind": "theorem",
  "lexical_name": "isIrreducible_iff_sInter",
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
  "slug": "isirreducible-iff-sinter--34ea471e368c48072b332d94",
  "source": {
    "blob": "6faf624f1e5d57fec395926d9cc9b844e790cef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34ea471e368c48072b332d94afe1cd1ecd9febc0d32c0506f401cb9195067ffc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2c92865-8f78-4160-90b7-16489d4db979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIrreducible_iff_sInter :
    IsIrreducible s ↔
      ∀ (U : Finset (Set X)), (∀ u ∈ U, IsOpen u) → (∀ u ∈ U, (s ∩ u).Nonempty) →
        (s ∩ ⋂₀ ↑U).Nonempty := by
  refine ⟨fun h U hu hU => ?_, fun h => ⟨?_, ?_⟩⟩
  · induction U using Finset.induction_on with
    | empty => simpa using h.nonempty
    | insert u U _ IH =>
      rw [Finset.coe_insert, sInter_insert]
      rw [Finset.forall_mem_insert] at hu hU
      exact h.2 _ _ hu.1 (U.finite_toSet.isOpen_sInter hu.2) hU.1 (IH hu.2 hU.2)
  · simpa using h ∅
  · intro u v hu hv hu' hv'
    simpa [*] using h {u, v}

/-- A set is preirreducible if and only if
for every cover by two closed sets, it is contained in one of the two covering sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6faf624f1e5d57fec395926d9cc9b844e790cef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
