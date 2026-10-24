# of_unique_max_ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48a98a6d9adb008facba25c0337fdcc10209537b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5c9010a-9845-ba36-a245-b826b18d3d78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ddde2dd-0721-2ef6-b9bc-c53003dfc619",
  "kind": "theorem",
  "lexical_name": "of_unique_max_ideal",
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
  "slug": "of-unique-max-ideal--58ef1f089c9d8e53f2150649",
  "source": {
    "blob": "48a98a6d9adb008facba25c0337fdcc10209537b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58ef1f089c9d8e53f21506492fa644b88db35e1465c73fade5ce2ff7cf1031aa",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ddde2dd-0721-2ef6-b9bc-c53003dfc619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_unique_max_ideal (h : ∃! I : Ideal R, I.IsMaximal) : IsLocalRing R :=
  @of_nonunits_add _ _
    (nontrivial_of_ne (0 : R) 1 <|
      let ⟨I, Imax, _⟩ := h
      fun H : 0 = 1 => Imax.1.1 <| I.eq_top_iff_one.2 <| H ▸ I.zero_mem)
    fun x y hx hy H =>
    let ⟨I, Imax, Iuniq⟩ := h
    let ⟨Ix, Ixmax, Hx⟩ := exists_max_ideal_of_mem_nonunits hx
    let ⟨Iy, Iymax, Hy⟩ := exists_max_ideal_of_mem_nonunits hy
    have xmemI : x ∈ I := Iuniq Ix Ixmax ▸ Hx
    have ymemI : y ∈ I := Iuniq Iy Iymax ▸ Hy
    Imax.1.1 <| I.eq_top_of_isUnit_mem (I.add_mem xmemI ymemI) H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a98a6d9adb008facba25c0337fdcc10209537b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
