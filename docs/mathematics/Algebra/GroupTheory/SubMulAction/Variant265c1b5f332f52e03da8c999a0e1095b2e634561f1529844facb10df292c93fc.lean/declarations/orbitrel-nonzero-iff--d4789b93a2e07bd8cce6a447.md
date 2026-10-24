# orbitRel_nonZero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a77d028e-a81e-0604-387c-95a7558ef2fd",
  "kind": "lemma",
  "lexical_name": "orbitRel_nonZero_iff",
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
  "slug": "orbitrel-nonzero-iff--d4789b93a2e07bd8cce6a447",
  "source": {
    "blob": "2d049158fe1f7259eabec286d2b7607675cb0fab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 592,
    "path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4789b93a2e07bd8cce6a4472861f16330d09f36bb3a873abaef26ed987239dd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a77d028e-a81e-0604-387c-95a7558ef2fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma orbitRel_nonZero_iff (x y : { v : M // v ≠ 0 }) :
    MulAction.orbitRel Rˣ { v // v ≠ 0 } x y ↔ MulAction.orbitRel Rˣ M x y :=
  ⟨by rintro ⟨a, rfl⟩; exact ⟨a, by simp⟩, by intro ⟨a, ha⟩; exact ⟨a, by ext; simpa⟩⟩

end Units

section FixedPoints

variable {G : Type*} [Group G] {α : Type*} [MulAction G α] {H : Subgroup G}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d049158fe1f7259eabec286d2b7607675cb0fab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
