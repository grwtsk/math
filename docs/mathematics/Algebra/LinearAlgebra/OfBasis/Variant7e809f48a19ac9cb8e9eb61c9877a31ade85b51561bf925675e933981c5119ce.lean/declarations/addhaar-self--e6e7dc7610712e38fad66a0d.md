# addHaar_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44e143c2-7810-2294-6e9b-19b3b4e05d35",
  "kind": "theorem",
  "lexical_name": "addHaar_self",
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
  "slug": "addhaar-self--e6e7dc7610712e38fad66a0d",
  "source": {
    "blob": "8265491f30c9d9bc37531f61f40a13a323a40f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 285,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant7e809f48a19ac9cb8e9eb61c9877a31ade85b51561bf925675e933981c5119ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6e7dc7610712e38fad66a0d0645a8ffd06fd102fa65ec522b4a938596a81739",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBasis/Variant7e809f48a19ac9cb8e9eb61c9877a31ade85b51561bf925675e933981c5119ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44e143c2-7810-2294-6e9b-19b3b4e05d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_self (b : Basis ι ℝ E) : b.addHaar (_root_.GRWTSK.Algebra.LinearAlgebra.Parallelepiped.Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.parallelepiped b) = 1 := by
  rw [Basis.addHaar]; exact addHaarMeasure_self

variable [MeasurableSpace F] [BorelSpace F] [SecondCountableTopologyEither E F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBasis/Variant7e809f48a19ac9cb8e9eb61c9877a31ade85b51561bf925675e933981c5119ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant7e809f48a19ac9cb8e9eb61c9877a31ade85b51561bf925675e933981c5119ce.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8265491f30c9d9bc37531f61f40a13a323a40f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
