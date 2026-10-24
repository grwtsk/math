# coordinatePermutation_xor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf814c29-e6ac-c62c-6960-510f1128f546",
  "kind": "theorem",
  "lexical_name": "coordinatePermutation_xor",
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
  "slug": "coordinatepermutation-xor--4ff791a709abef2c77aca9ee",
  "source": {
    "blob": "e0c477f5ed01798652eb7309333b6f4453601346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "docs/verification/_support/lean-provider-adapters/BitMatrix/Network/Permutation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ff791a709abef2c77aca9ee9049bbd1927abc16b4c0d597a11d7209e1f1d9d4",
  "verification": {
    "reference": "docs/verification/_support/docs/verification/_support/lean-provider-adapters/BitMatrix/Network/Permutation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf814c29-e6ac-c62c-6960-510f1128f546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinatePermutation_xor {n : Nat} (π : Equiv.Perm (Fin n))
    (x y : Bits n) :
    coordinatePermutation π (xorBits x y) =
      xorBits (coordinatePermutation π x) (coordinatePermutation π y) :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.coordinatePermutation_xor π x y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/_support/docs/verification/_support/lean-provider-adapters/BitMatrix/Network/Permutation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/docs/verification/_support/lean-provider-adapters/BitMatrix/Network/Permutation.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0c477f5ed01798652eb7309333b6f4453601346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
