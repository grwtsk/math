# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02f2373b1427dd425590c19d26d8bc33efa4c4389a7f09c98b38a0fd1bdf5c72",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--4cf1b4e42a31e5a85b47c3d3",
  "source": {
    "blob": "57a8eeb2b0ab085303ad10deb124de0a9662845e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 498,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cf1b4e42a31e5a85b47c3d32368ea502209d346f61c72f894ab83f9e699b1fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02f2373b1427dd425590c19d26d8bc33efa4c4389a7f09c98b38a0fd1bdf5c72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (K : Type*) [Field K] [CharZero K] {x y z p q : K}
    (h₀ : 3 * x ^ 2 + z ^ 2 * p = 0)
    (h₁ : z * (2 * y) = 0)
    (h₂ : -y ^ 2 + p * x * (2 * z) + q * (3 * z ^ 2) = 0) :
    ((27 * q ^ 2 + 4 * p ^ 3) * x) ^ 4 = 0 := by
  linear_combination (norm := skip)
    (256 / 3 * p ^ 12 * x ^ 2 + 128 * q * p ^ 11 * x * z + 2304 * q ^ 2 * p ^ 9 * x ^ 2 +
                                2592 * q ^ 3 * p ^ 8 * x * z -
                              64 * q * p ^ 10 * y ^ 2 +
                            23328 * q ^ 4 * p ^ 6 * x ^ 2 +
                          17496 * q ^ 5 * p ^ 5 * x * z -
                        1296 * q ^ 3 * p ^ 7 * y ^ 2 +
                      104976 * q ^ 6 * p ^ 3 * x ^ 2 +
                    39366 * q ^ 7 * p ^ 2 * x * z -
                  8748 * q ^ 5 * p ^ 4 * y ^ 2 +
                177147 * q ^ 8 * x ^ 2 -
              19683 * q ^ 7 * p * y ^ 2) *
            h₀ +
          (-(64 / 3 * p ^ 12 * x * y) + 32 * q * p ^ 11 * z * y - 432 * q ^ 2 * p ^ 9 * x * y +
                      648 * q ^ 3 * p ^ 8 * z * y -
                    2916 * q ^ 4 * p ^ 6 * x * y +
                  4374 * q ^ 5 * p ^ 5 * z * y -
                6561 * q ^ 6 * p ^ 3 * x * y +
              19683 / 2 * q ^ 7 * p ^ 2 * z * y) *
            h₁ +
        (-(128 / 3 * p ^ 12 * x * z) - 192 * q * p ^ 10 * x ^ 2 - 864 * q ^ 2 * p ^ 9 * x * z -
                    3888 * q ^ 3 * p ^ 7 * x ^ 2 -
                  5832 * q ^ 4 * p ^ 6 * x * z -
                26244 * q ^ 5 * p ^ 4 * x ^ 2 -
              13122 * q ^ 6 * p ^ 3 * x * z -
            59049 * q ^ 7 * p * x ^ 2) *
          h₂
  exact test_sorry

/- When `linear_combination` is used to prove inequalities, its speed is very sensitive to how much
typeclass inference is demanded by the lemmas it orchestrates.  This example took 2146 heartbeats
(and 73 ms on a good laptop) on an implementation with "minimal" typeclasses everywhere, e.g. lots of
`CovariantClass`/`ContravariantClass`, and takes 206 heartbeats (10 ms on a good laptop) on the
implementation at the time of joining Mathlib (November 2024). -/
set_option maxHeartbeats 1200 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57a8eeb2b0ab085303ad10deb124de0a9662845e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
