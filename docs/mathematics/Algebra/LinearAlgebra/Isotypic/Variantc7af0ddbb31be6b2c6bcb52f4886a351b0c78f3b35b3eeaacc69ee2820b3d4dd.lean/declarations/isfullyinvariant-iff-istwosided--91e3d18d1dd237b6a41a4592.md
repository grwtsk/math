# isFullyInvariant_iff_isTwoSided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77f03d7b-e669-00ec-b1b9-05bd6594c261",
  "kind": "theorem",
  "lexical_name": "isFullyInvariant_iff_isTwoSided",
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
  "slug": "isfullyinvariant-iff-istwosided--91e3d18d1dd237b6a41a4592",
  "source": {
    "blob": "bf45c238ccf34c0da62f03063df50e25acf3a9a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91e3d18d1dd237b6a41a45925066beb0f1d7f3806185606e269f5564df267e45",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77f03d7b-e669-00ec-b1b9-05bd6594c261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFullyInvariant_iff_isTwoSided {I : Ideal R} : I.IsFullyInvariant ↔ I.IsTwoSided := by
  simpa only [Submodule.IsFullyInvariant, ← MulOpposite.opEquiv.trans (RingEquiv.moduleEndSelf R
    |>.toEquiv) |>.forall_congr_right, SetLike.le_def, I.isTwoSided_iff] using forall_comm

variable (R M S)

/-- If `S` is a simple `R`-module, the `S`-isotypic component in an `R`-module `M` is the sum of
all submodules of `M` isomorphic to `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf45c238ccf34c0da62f03063df50e25acf3a9a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
