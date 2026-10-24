# mulMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17b15fd98feaaad4aeee1decfd5076c1a84e93a351010215c2b33971c2a106d3",
  "kind": "def",
  "lexical_name": "mulMonoidHom",
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
  "slug": "mulmonoidhom--50370a0f0f6b853ada2e2419",
  "source": {
    "blob": "0d8441d0d6fa9ca2da25a777fde467b09c87c71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 670,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variant47844944dac6ab52e1f602bed4b0da16ab7d5d497c9be90e01eba313c12415ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50370a0f0f6b853ada2e24192e832e681404d97ecb3b741ea624dadd6add027b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variant47844944dac6ab52e1f602bed4b0da16ab7d5d497c9be90e01eba313c12415ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17b15fd98feaaad4aeee1decfd5076c1a84e93a351010215c2b33971c2a106d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulMonoidHom [CommMonoid α] : α × α →* α :=
  { mulMulHom with map_one' := mul_one _ }

/-- Division as a monoid homomorphism. -/
@[to_additive (attr := simps) /-- Subtraction as an additive monoid homomorphism. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variant47844944dac6ab52e1f602bed4b0da16ab7d5d497c9be90e01eba313c12415ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variant47844944dac6ab52e1f602bed4b0da16ab7d5d497c9be90e01eba313c12415ed.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d8441d0d6fa9ca2da25a777fde467b09c87c71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
