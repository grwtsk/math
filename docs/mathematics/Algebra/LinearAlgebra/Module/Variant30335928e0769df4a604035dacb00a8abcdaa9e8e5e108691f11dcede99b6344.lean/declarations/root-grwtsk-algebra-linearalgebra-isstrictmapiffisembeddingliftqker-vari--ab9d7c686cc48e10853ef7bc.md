# _root_.GRWTSK.Algebra.LinearAlgebra.IsStrictMapIffIsEmbeddingLiftQKer.Variant8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541.ContinuousLinearEquiv.quotKerEquivRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:393c18b591cc10e118d5ee42229abc60927879b4f52d93dfac4f8fe797680a71",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsStrictMapIffIsEmbeddingLiftQKer.Variant8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541.ContinuousLinearEquiv.quotKerEquivRange",
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
  "slug": "root-grwtsk-algebra-linearalgebra-isstrictmapiffisembeddingliftqker-vari--ab9d7c686cc48e10853ef7bc",
  "source": {
    "blob": "eecfa9f5a93033ae1bc49c5c891b042557a1a89f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant30335928e0769df4a604035dacb00a8abcdaa9e8e5e108691f11dcede99b6344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab9d7c686cc48e10853ef7bc454e04b96b521d1f7fbad0fd38e58d776aafdf1f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant30335928e0769df4a604035dacb00a8abcdaa9e8e5e108691f11dcede99b6344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:393c18b591cc10e118d5ee42229abc60927879b4f52d93dfac4f8fe797680a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Algebra.LinearAlgebra.IsStrictMapIffIsEmbeddingLiftQKer.Variant8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541.ContinuousLinearEquiv.quotKerEquivRange
    (hf : IsStrictMap fₗ) : (M ⧸ fₗ.ker) ≃L[R] fₗ.range :=
  .ofIsHomeomorph fₗ.quotKerEquivRange (fₗ.isStrictMap_iff_isHomeomorph_quotKerEquivRange.mp hf)

variable [IsTopologicalAddGroup M]

/-- A linear map is strict if and only if its `rangeRestrict` is an open quotient map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant30335928e0769df4a604035dacb00a8abcdaa9e8e5e108691f11dcede99b6344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant30335928e0769df4a604035dacb00a8abcdaa9e8e5e108691f11dcede99b6344.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eecfa9f5a93033ae1bc49c5c891b042557a1a89f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
