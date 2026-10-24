# IsNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab46f5f37b4cc53b3e8b776acd589c62b3259ca67160e622d5bfbb7cf8ff0117",
  "kind": "class",
  "lexical_name": "IsNoetherian",
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
  "slug": "isnoetherian--22481d6f40346e227fd073bd",
  "source": {
    "blob": "f80f4aac87eaf9503ad81fdbb9102d50c20f2b86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22481d6f40346e227fd073bd1529cbfea0e1fcc17a022e4f430f89801105f4a8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab46f5f37b4cc53b3e8b776acd589c62b3259ca67160e622d5bfbb7cf8ff0117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsNoetherian (R M) [Semiring R] [AddCommMonoid M] [Module R M] : Prop where
  noetherian : ∀ s : Submodule R M, s.FG

attribute [inherit_doc IsNoetherian] IsNoetherian.noetherian

section

variable {R : Type*} {M : Type*}
variable [Semiring R] [AddCommMonoid M]
variable [Module R M]

open IsNoetherian

/-- An R-module is Noetherian iff all its submodules are finitely-generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f80f4aac87eaf9503ad81fdbb9102d50c20f2b86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
