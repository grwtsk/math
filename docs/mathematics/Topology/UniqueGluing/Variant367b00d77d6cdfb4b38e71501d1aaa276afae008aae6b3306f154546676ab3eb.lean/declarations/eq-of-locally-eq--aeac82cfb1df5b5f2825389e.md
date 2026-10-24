# eq_of_locally_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b22f8fa-5f5c-80f4-4097-dd4569ec929b",
  "kind": "theorem",
  "lexical_name": "eq_of_locally_eq",
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
  "slug": "eq-of-locally-eq--aeac82cfb1df5b5f2825389e",
  "source": {
    "blob": "0a450ecb9c3a077330b2a03bda875b8166dfed94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 212,
    "path": "GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeac82cfb1df5b5f2825389e6711a1218b133a72ccfc076f4e4b03bfb5f52f6c",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b22f8fa-5f5c-80f4-4097-dd4569ec929b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_locally_eq (s t : ToType (F.1.obj (op (iSup U))))
    (h : ∀ i, F.1.map (Opens.leSupr U i).op s = F.1.map (Opens.leSupr U i).op t) : s = t := by
  let sf : ∀ i : ι, ToType (F.1.obj (op (U i))) := fun i => F.1.map (Opens.leSupr U i).op s
  have sf_compatible : IsCompatible _ U sf := by
    intro i j
    simp_rw [sf, ← ConcreteCategory.comp_apply, ← F.1.map_comp]
    rfl
  obtain ⟨gl, -, gl_uniq⟩ := F.existsUnique_gluing U sf sf_compatible
  trans gl
  · apply gl_uniq
    intro i
    rfl
  · symm
    apply gl_uniq
    intro i
    rw [← h]

/-- In this version of the lemma, the inclusion homs `iUV` can be specified directly by the user,
which can be more convenient in practice.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a450ecb9c3a077330b2a03bda875b8166dfed94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
