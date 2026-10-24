# cellFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95b44617da0c4d6a17bd681ed7b8bcc8b9b639f34fb9c89fadff157e12152758",
  "kind": "instance",
  "lexical_name": "cellFintype",
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
  "slug": "cellfintype--3cf0a90b19fa3e25da6067ba",
  "source": {
    "blob": "36e8775f3dfa24907508695278fa425a19345412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cf0a90b19fa3e25da6067bac4888edd7ed9a84bf2e2f80f5bef4d1a9ad074e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95b44617da0c4d6a17bd681ed7b8bcc8b9b639f34fb9c89fadff157e12152758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance cellFintype (rows columns : Nat) : Fintype (Cell rows columns) :=
  Fintype.ofEquiv
    (Vertex rows columns ⊕
      (HorizontalEdge rows columns ⊕
        (VerticalEdge rows columns ⊕ GridCell rows columns)))
    { toFun := fun value =>
        match value with
        | .inl vertex => .vertex vertex
        | .inr (.inl edge) => .horizontal edge
        | .inr (.inr (.inl edge)) => .vertical edge
        | .inr (.inr (.inr square)) => .square square
      invFun := fun value =>
        match value with
        | .vertex vertex => .inl vertex
        | .horizontal edge => .inr (.inl edge)
        | .vertical edge => .inr (.inr (.inl edge))
        | .square square => .inr (.inr (.inr square))
      left_inv := fun value => by rcases value with _ | (_ | (_ | _)) <;> rfl
      right_inv := fun value => by cases value <;> rfl }

/-- A concrete finite rectangular cubical complex, including every face. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e8775f3dfa24907508695278fa425a19345412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
