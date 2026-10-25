# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Encodable.Variant4aa3368b9e7f9b4240a37ff3cf0b843b0be8625241a048fec6ce300a49a4b680.Sum.encodable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:166e02f15dee24862d1d89df38babcfbe275320019054d41fcb68b3a2cbca63d",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Encodable.Variant4aa3368b9e7f9b4240a37ff3cf0b843b0be8625241a048fec6ce300a49a4b680.Sum.encodable",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va--b8b52d291d650ea361483920",
  "source": {
    "blob": "438254d9ebc407755029259b8456311427b5d42c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8b52d291d650ea36148392098ebd4863701a652b380c8d3991e17628b969c9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:166e02f15dee24862d1d89df38babcfbe275320019054d41fcb68b3a2cbca63d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Encodable.Variant4aa3368b9e7f9b4240a37ff3cf0b843b0be8625241a048fec6ce300a49a4b680.Sum.encodable : Encodable (α ⊕ β) :=
  ⟨encodeSum, decodeSum, fun s => by cases s <;> simp [encodeSum, div2_val, decodeSum, encodek]⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `438254d9ebc407755029259b8456311427b5d42c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
