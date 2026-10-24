# _root_.GRWTSK.Algebra.LinearAlgebra.DiscrPrimePowNeTwoPrime.Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.IsCyclotomicExtension.ring_of_integers'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b65f2ea6235e0d6a202d73dd82bf491f1a43c9bbc579592a5ed2d065009912d8",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.DiscrPrimePowNeTwoPrime.Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.IsCyclotomicExtension.ring_of_integers'",
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
  "slug": "root-grwtsk-algebra-linearalgebra-discrprimepownetwoprime-variant70d534d--4e88faad12ade46fdec6f66f",
  "source": {
    "blob": "6cf5556e9c02bae1f6e14da81db9028f7fe55398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e88faad12ade46fdec6f66f62cd12205ff95f5fc4b36392439c879499da8c25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b65f2ea6235e0d6a202d73dd82bf491f1a43c9bbc579592a5ed2d065009912d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.LinearAlgebra.DiscrPrimePowNeTwoPrime.Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.IsCyclotomicExtension.ring_of_integers' [IsCyclotomicExtension {p} ℚ K] :
    IsCyclotomicExtension {p} ℤ (𝓞 K) :=
  let _ := (zeta_spec p ℚ K).adjoin_isCyclotomicExtension ℤ
  IsCyclotomicExtension.equiv _ ℤ _ (zeta_spec p ℚ K).adjoinEquivRingOfIntegers'
#align is_cyclotomic_extension.ring_of_integers' IsCyclotomicExtension.ring_of_integers'

/-- The integral `PowerBasis` of `𝓞 K` given by a primitive root of unity, where `K` is a `p`-th
cyclotomic extension of `ℚ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf5556e9c02bae1f6e14da81db9028f7fe55398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
