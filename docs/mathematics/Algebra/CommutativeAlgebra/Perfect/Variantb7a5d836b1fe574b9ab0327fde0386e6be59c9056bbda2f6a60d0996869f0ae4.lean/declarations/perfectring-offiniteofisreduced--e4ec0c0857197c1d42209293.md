# PerfectRing.ofFiniteOfIsReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29f75da791fb3f3efe6990f2dbe5eaa2107070768ae09a9f75532feca877beab",
  "kind": "instance",
  "lexical_name": "PerfectRing.ofFiniteOfIsReduced",
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
  "slug": "perfectring-offiniteofisreduced--e4ec0c0857197c1d42209293",
  "source": {
    "blob": "b8043689debb7b27749c62e9d4b34307e466a91c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4ec0c0857197c1d422092938b55cf90e3330472991ea9c33b7f6501e9ca1380",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29f75da791fb3f3efe6990f2dbe5eaa2107070768ae09a9f75532feca877beab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance PerfectRing.ofFiniteOfIsReduced (R : Type _) [CommRing R] [CharP R p]
    [Finite R] [IsReduced R] : PerfectRing R p :=
  ofSurjective _ _ $ Finite.surjective_of_injective (frobenius_inj R p)

variable [PerfectRing R p]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8043689debb7b27749c62e9d4b34307e466a91c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
