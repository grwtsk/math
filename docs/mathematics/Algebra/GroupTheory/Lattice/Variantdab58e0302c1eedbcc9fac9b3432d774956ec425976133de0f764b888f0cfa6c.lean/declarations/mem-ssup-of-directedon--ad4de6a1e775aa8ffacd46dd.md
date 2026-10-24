# mem_sSup_of_directedOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9dbe53ab8cc6ce454f4c068e9d4104fdab8d0a17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 526,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:291fd270-0d1c-9329-295f-dc3d6fc4edf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d0a9094-72d6-c6b1-33f7-d4d5ca254c2b",
  "kind": "theorem",
  "lexical_name": "mem_sSup_of_directedOn",
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
  "slug": "mem-ssup-of-directedon--ad4de6a1e775aa8ffacd46dd",
  "source": {
    "blob": "9dbe53ab8cc6ce454f4c068e9d4104fdab8d0a17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 526,
    "path": "GRWTSK/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad4de6a1e775aa8ffacd46dd7b487a1c19c2cddb513653bab0126d71785e6e6b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d0a9094-72d6-c6b1-33f7-d4d5ca254c2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sSup_of_directedOn {K : Set (Subgroup G)} (Kne : K.Nonempty) (hK : DirectedOn (· ≤ ·) K)
    {x : G} : x ∈ sSup K ↔ ∃ s ∈ K, x ∈ s := by
  haveI : Nonempty K := Kne.to_subtype
  simp only [sSup_eq_iSup', mem_iSup_of_directed hK.directed_val, SetCoe.exists, Subtype.coe_mk,
    exists_prop]

variable {C : Type*} [CommGroup C] {s t : Subgroup C} {x : C}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dbe53ab8cc6ce454f4c068e9d4104fdab8d0a17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
