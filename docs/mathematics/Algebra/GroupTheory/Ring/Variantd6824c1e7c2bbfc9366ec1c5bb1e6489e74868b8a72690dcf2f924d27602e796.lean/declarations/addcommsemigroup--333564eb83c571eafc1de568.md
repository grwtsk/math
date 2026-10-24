# addCommSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33265c82ac26c5e80c271a3fcefded896271edd7964912bb0b4c1917f3775767",
  "kind": "instance",
  "lexical_name": "addCommSemigroup",
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
  "slug": "addcommsemigroup--333564eb83c571eafc1de568",
  "source": {
    "blob": "36e3f798543cc12c553d4bbf7edcea59bbd6c0ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 50,
    "path": "GRWTSK/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:333564eb83c571eafc1de5684adc9c930a3a148afc523390e778e7ca75c5fc4c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33265c82ac26c5e80c271a3fcefded896271edd7964912bb0b4c1917f3775767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addCommSemigroup {M : Type*} [AddCommMonoid M] [Preorder M]
    [CovariantClass M M (· + ·) (· < ·)] : AddCommSemigroup { x : M // 0 < x } :=
  Subtype.coe_injective.addCommSemigroup _ coe_add
#align positive.subtype.add_comm_semigroup Positive.addCommSemigroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e3f798543cc12c553d4bbf7edcea59bbd6c0ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
