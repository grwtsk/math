# eq_top_of_isUnit_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2b90e9d-a98b-8365-ad05-73f4d6695a3a",
  "kind": "theorem",
  "lexical_name": "eq_top_of_isUnit_mem",
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
  "slug": "eq-top-of-isunit-mem--2ea775d0081c1ccd10949727",
  "source": {
    "blob": "a041e0bd8e05ed901430f54ee90b7a7d2144335e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 58,
    "path": "GRWTSK/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ea775d0081c1ccd109497272856a1aa1db6971a90bf87dea86435a9d22d3b2a",
  "verification": {
    "reference": "docs/verification/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b90e9d-a98b-8365-ad05-73f4d6695a3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_top_of_isUnit_mem {x} (hx : x ∈ I) (h : IsUnit x) : I = ⊤ :=
  let ⟨y, hy⟩ := h.exists_left_inv
  eq_top_of_unit_mem I x y hx hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a041e0bd8e05ed901430f54ee90b7a7d2144335e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
