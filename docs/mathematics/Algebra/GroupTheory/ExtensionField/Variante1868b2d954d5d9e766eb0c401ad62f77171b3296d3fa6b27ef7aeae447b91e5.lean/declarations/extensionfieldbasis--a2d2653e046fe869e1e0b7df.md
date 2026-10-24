# ExtensionFieldBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2703195cf252148340ef4820044efec38b770af1c9f4a07a050ce78938548e7",
  "kind": "structure",
  "lexical_name": "ExtensionFieldBasis",
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
  "slug": "extensionfieldbasis--a2d2653e046fe869e1e0b7df",
  "source": {
    "blob": "268c0f05d0019bb618b5f65229ea11ff42d61154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 22,
    "path": "GRWTSK/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2d2653e046fe869e1e0b7df0b1418f28c46ca9002aafeb40a4aa1324aaad4b5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2703195cf252148340ef4820044efec38b770af1c9f4a07a050ce78938548e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExtensionFieldBasis (prime degree : Nat) where
  nontrivialPrime : 2 ≤ prime
  positiveDegree : 0 < degree
  basisId : String
  irreduciblePolynomial : List (ZMod prime)
  coordinateOrder : Equiv.Perm (Fin degree)
  reductionLawId : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `268c0f05d0019bb618b5f65229ea11ff42d61154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
