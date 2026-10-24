# IsIsotypicOfType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0ebc8eb14d69dbe7e1e944cde3760794896ef8222dae31ad1b38f578dd6a5d6",
  "kind": "def",
  "lexical_name": "IsIsotypicOfType",
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
  "slug": "isisotypicoftype--9fbf6a77060a05b36b70b79d",
  "source": {
    "blob": "ce085983a5352bad50aa339fd51a84ffcd483e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fbf6a77060a05b36b70b79d04df0c2ff8f68d6af01f03626fe81681b34a3f25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0ebc8eb14d69dbe7e1e944cde3760794896ef8222dae31ad1b38f578dd6a5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsIsotypicOfType : Prop := ∀ (m : Submodule R M) [IsSimpleModule R m], Nonempty (m ≃ₗ[R] S)

/-- An `R`-module `M` is isotypic if all its simple submodules are isomorphic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce085983a5352bad50aa339fd51a84ffcd483e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
