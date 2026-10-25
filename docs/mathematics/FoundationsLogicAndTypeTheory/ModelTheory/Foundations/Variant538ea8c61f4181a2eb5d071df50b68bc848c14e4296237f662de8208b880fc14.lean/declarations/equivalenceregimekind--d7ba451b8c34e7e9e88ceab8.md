# EquivalenceRegimeKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce9eab2d75b3eca07831db939675a61197ab7b0f9f3d87f3765c539e85c9b172",
  "kind": "inductive",
  "lexical_name": "EquivalenceRegimeKind",
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
  "slug": "equivalenceregimekind--d7ba451b8c34e7e9e88ceab8",
  "source": {
    "blob": "6993a469a8e3a08edcc7daffa51496abf318d034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 744,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7ba451b8c34e7e9e88ceab8680eb6ad035d2f6e6f49a4ea6d225270a84cb27d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce9eab2d75b3eca07831db939675a61197ab7b0f9f3d87f3765c539e85c9b172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 744–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive EquivalenceRegimeKind where
  | Equality
  | Isomorphism
  | TypedIsomorphism
  | LabelPreservingIsomorphism
  | OrderIsomorphism
  | GroupIsomorphism
  | RingIsomorphism
  | FieldIsomorphism
  | LinearIsomorphism
  | Homeomorphism
  | HomotopyEquivalence
  | Diffeomorphism
  | MeasurePreservingIsomorphism
  | CategoryEquivalence
  | NaturalIsomorphism
  | MoritaEquivalence
  | QuasiIsomorphism
  | WeakEquivalence
  | BirationalEquivalence
  | CustomProvedEquivalence
deriving Repr, DecidableEq

/-- A proof-bearing equivalence relation for objects of one theory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean#L744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6993a469a8e3a08edcc7daffa51496abf318d034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
