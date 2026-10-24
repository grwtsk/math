# isFractionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a22f59171b9796d71fa0ffa7a902db9b17ae0e66279ce48ccde5393b0624e6ae",
  "kind": "instance",
  "lexical_name": "isFractionRing",
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
  "slug": "isfractionring--27f0b4cd237722a53ab95e0c",
  "source": {
    "blob": "8e8d470a564999a7aa6b30e51a82c64ac40372ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27f0b4cd237722a53ab95e0c56518699f877656b21a798b9a951923bbb883a61",
  "verification": {
    "reference": "docs/verification/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a22f59171b9796d71fa0ffa7a902db9b17ae0e66279ce48ccde5393b0624e6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isFractionRing : IsFractionRing (subalgebra K S hS) K :=
  IsFractionRing.isFractionRing_of_isLocalization S _ _ hS

end subalgebra

end CommRing

section Field

variable [Field K] [Algebra A K] [IsFractionRing A K]

namespace subalgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e8d470a564999a7aa6b30e51a82c64ac40372ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
