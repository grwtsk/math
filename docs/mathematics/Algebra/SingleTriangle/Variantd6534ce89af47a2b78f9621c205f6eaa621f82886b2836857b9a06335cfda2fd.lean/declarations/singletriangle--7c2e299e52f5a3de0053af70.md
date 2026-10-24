# singleTriangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd134292a1b119cbc2da315d3a51d34eb4076c5ca8856aeb7b5e383275ef56e6",
  "kind": "def",
  "lexical_name": "singleTriangle",
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
  "slug": "singletriangle--7c2e299e52f5a3de0053af70",
  "source": {
    "blob": "c3f11a97a38b31b6b9624241eb18f804cbeab381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 60,
    "path": "GRWTSK/Algebra/SingleTriangle/Variantd6534ce89af47a2b78f9621c205f6eaa621f82886b2836857b9a06335cfda2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c2e299e52f5a3de0053af706f96b772d0f0c6803085692a41b9a7edb3b96754",
  "verification": {
    "reference": "docs/verification/Algebra/SingleTriangle/Variantd6534ce89af47a2b78f9621c205f6eaa621f82886b2836857b9a06335cfda2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd134292a1b119cbc2da315d3a51d34eb4076c5ca8856aeb7b5e383275ef56e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def singleTriangle : Triangle (DerivedCategory C) :=
  Triangle.mk ((singleFunctor C 0).map S.f)
    ((singleFunctor C 0).map S.g) hS.singleδ

set_option backward.defeqAttrib.useBackward true in
/-- Given a short exact complex `S` in `C` that is short exact (`hS`), this is the
canonical isomorphism between the triangle `hS.singleTriangle` in the derived category
and the triangle attached to the corresponding short exact sequence of cochain complexes
after the application of the single functor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SingleTriangle/Variantd6534ce89af47a2b78f9621c205f6eaa621f82886b2836857b9a06335cfda2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SingleTriangle/Variantd6534ce89af47a2b78f9621c205f6eaa621f82886b2836857b9a06335cfda2fd.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f11a97a38b31b6b9624241eb18f804cbeab381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
