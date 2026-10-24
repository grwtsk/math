# varInputAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc825afc7f0cb0e34e9e0c7617aa3f59af384c8099c1187ee8d25a760610f345",
  "kind": "def",
  "lexical_name": "varInputAt",
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
  "slug": "varinputat--ce6ed124e5a6be4aaa3596d6",
  "source": {
    "blob": "0541fd5e1d0a6d27b2ba59612ae12f9f32a046fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce6ed124e5a6be4aaa3596d6148c7a95b91aad7fbcc493fd00e5000cb666739c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc825afc7f0cb0e34e9e0c7617aa3f59af384c8099c1187ee8d25a760610f345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def varInputAt : EMLTree k -> Nat -> Option (Fin k)
  | .one, _ => none
  | .var input, index => if index = 0 then some input else none
  | .eml left right, index =>
      if index < left.size then
        left.varInputAt index
      else if index < left.size + right.size then
        right.varInputAt (index - left.size)
      else
        none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0541fd5e1d0a6d27b2ba59612ae12f9f32a046fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
