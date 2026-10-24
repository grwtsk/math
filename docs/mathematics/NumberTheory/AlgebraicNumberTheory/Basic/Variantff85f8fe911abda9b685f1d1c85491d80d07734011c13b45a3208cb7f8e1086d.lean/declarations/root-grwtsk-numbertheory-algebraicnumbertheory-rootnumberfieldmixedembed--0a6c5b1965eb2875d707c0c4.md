# _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.RootNumberFieldMixedEmbeddingVolumeFundamentalDomainLatticeBasis.Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.NumberField.mixedEmbedding.covolume_integerLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:356cca1f-279b-b08b-ffca-95b868a599f9",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.RootNumberFieldMixedEmbeddingVolumeFundamentalDomainLatticeBasis.Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.NumberField.mixedEmbedding.covolume_integerLattice",
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
  "slug": "root-grwtsk-numbertheory-algebraicnumbertheory-rootnumberfieldmixedembed--0a6c5b1965eb2875d707c0c4",
  "source": {
    "blob": "fd1619b8c00751ca9b8cd1cc4764b4e3e7838132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a6c5b1965eb2875d707c0c465336e8cfd826e8409427307cfe72b4e31fd3f62",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:356cca1f-279b-b08b-ffca-95b868a599f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.RootNumberFieldMixedEmbeddingVolumeFundamentalDomainLatticeBasis.Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.NumberField.mixedEmbedding.covolume_integerLattice :
    ZLattice.covolume (mixedEmbedding.integerLattice K) =
      (2 ⁻¹) ^ nrComplexPlaces K * √|discr K| := by
  rw [ZLattice.covolume_eq_measure_fundamentalDomain _ _ (fundamentalDomain_integerLattice K),
    measureReal_def,
    volume_fundamentalDomain_latticeBasis, ENNReal.toReal_mul, ENNReal.toReal_pow,
    ENNReal.toReal_inv, toReal_ofNat, ENNReal.coe_toReal, Real.coe_sqrt, coe_nnnorm,
    Int.norm_eq_abs]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1619b8c00751ca9b8cd1cc4764b4e3e7838132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
