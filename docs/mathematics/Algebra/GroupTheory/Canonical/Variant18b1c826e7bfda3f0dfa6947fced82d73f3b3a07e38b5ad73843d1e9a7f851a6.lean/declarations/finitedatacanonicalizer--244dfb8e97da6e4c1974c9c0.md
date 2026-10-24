# FiniteDataCanonicalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:046f2f91bb4e775ba787a57a4d5911f9cce6905f097eae6e11d820f624d3880e",
  "kind": "structure",
  "lexical_name": "FiniteDataCanonicalizer",
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
  "slug": "finitedatacanonicalizer--244dfb8e97da6e4c1974c9c0",
  "source": {
    "blob": "0662d5597cbc3baafdf25b740add06890f578264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 22,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:244dfb8e97da6e4c1974c9c0a5c5a59ff65e4f021228060799abeb767df727c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:046f2f91bb4e775ba787a57a4d5911f9cce6905f097eae6e11d820f624d3880e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteDataCanonicalizer
    (G X : Type)
    [Group G]
    [Fintype G]
    [MulAction G X] where
  orderingVersion : String
  encode : X → String
  encode_injective : Function.Injective encode
  canonicalize : X → X
  chosenFromOrbit :
    ∀ value : X,
      SameOrbit (G := G) value (canonicalize value)
  orbitInvariant :
    ∀ (groupElement : G) (value : X),
      canonicalize (groupElement • value) =
        canonicalize value
  idempotent :
    ∀ value : X,
      canonicalize (canonicalize value) =
        canonicalize value
  complete :
    ∀ left right : X,
      canonicalize left = canonicalize right ↔
        SameOrbit (G := G) left right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0662d5597cbc3baafdf25b740add06890f578264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
