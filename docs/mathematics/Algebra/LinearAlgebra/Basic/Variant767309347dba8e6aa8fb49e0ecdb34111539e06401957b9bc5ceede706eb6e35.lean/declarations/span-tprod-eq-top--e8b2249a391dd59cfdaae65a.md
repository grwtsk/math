# span_tprod_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bebd5b164fd9e2a48d612507faf9d89c2f90b222",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61c304ca-f725-70d3-3175-508f6b0babdb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fee7a528-1f25-81af-706e-281bcbee6fd9",
  "kind": "theorem",
  "lexical_name": "span_tprod_eq_top",
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
  "slug": "span-tprod-eq-top--e8b2249a391dd59cfdaae65a",
  "source": {
    "blob": "bebd5b164fd9e2a48d612507faf9d89c2f90b222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 376,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8b2249a391dd59cfdaae65a4ed73bae5242c66771333d8a3d6db66cf53cce11",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fee7a528-1f25-81af-706e-281bcbee6fd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_tprod_eq_top :
    Submodule.span R (Set.range (tprod R)) = (⊤ : Submodule R (⨂[R] i, s i)) :=
  Submodule.eq_top_iff'.mpr fun t ↦ t.induction_on
    (fun _ _ ↦ Submodule.smul_mem _ _
      (Submodule.subset_span (by simp only [Set.mem_range, exists_apply_eq_apply])))
    (fun _ _ hx hy ↦ Submodule.add_mem _ hx hy)

end Module

section Multilinear

open MultilinearMap

variable {s}

section lift

/-- Auxiliary function to constructing a linear map `(⨂[R] i, s i) → E` given a
`MultilinearMap R s E` with the property that its composition with the canonical
`MultilinearMap R s (⨂[R] i, s i)` is the given multilinear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebd5b164fd9e2a48d612507faf9d89c2f90b222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
