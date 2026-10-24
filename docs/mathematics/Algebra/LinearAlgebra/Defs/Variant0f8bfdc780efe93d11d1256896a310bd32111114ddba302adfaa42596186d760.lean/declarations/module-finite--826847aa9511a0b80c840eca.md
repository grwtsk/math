# Module.Finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:884bb925b4b273514ab5dc37f802effdf0ee01136f1db5df5363e0b927bc27f7",
  "kind": "class",
  "lexical_name": "Module.Finite",
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
  "slug": "module-finite--826847aa9511a0b80c840eca",
  "source": {
    "blob": "07ea2c832a16c963165b95efa4068d57642abb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:826847aa9511a0b80c840eca4f6ab79a3c9267d5fddb553a9a4b778382a5538d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:884bb925b4b273514ab5dc37f802effdf0ee01136f1db5df5363e0b927bc27f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected class Module.Finite [Semiring R] [AddCommMonoid M] [Module R M] : Prop where
  of_fg_top ::
    fg_top : (⊤ : Submodule R M).FG

attribute [inherit_doc Module.Finite] Module.Finite.fg_top

namespace Module

variable [Semiring R] [AddCommMonoid M] [Module R M]

/-- See also `Module.Finite.iff_fg` for a version when `M` is itself a submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07ea2c832a16c963165b95efa4068d57642abb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
