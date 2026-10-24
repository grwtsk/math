# incl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:105bd222c382c4e49fb2545706ec8e11a6a94dfcf299525e9f2be94ebd0b9fc6",
  "kind": "def",
  "lexical_name": "incl",
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
  "slug": "incl--eaddad0d62b5973a77738ed5",
  "source": {
    "blob": "e687027de70e7bbeceeffee198c75605be5fc713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 557,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaddad0d62b5973a77738ed59bd2695a9dd3c62ed7e25c52f0123e450c3e203e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:105bd222c382c4e49fb2545706ec8e11a6a94dfcf299525e9f2be94ebd0b9fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def incl : N →ₗ⁅R,L⁆ M :=
  { Submodule.subtype (N : Submodule R M) with map_lie' := fun {_ _} ↦ rfl }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e687027de70e7bbeceeffee198c75605be5fc713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
