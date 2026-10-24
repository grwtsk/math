# mulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaee1da83af2cff06ad2b40ce7eb7f848ac087ba09d6129b8fbefab7c7f82af0",
  "kind": "def",
  "lexical_name": "mulRight",
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
  "slug": "mulright--d6284914f219fe1c0dbf13ed",
  "source": {
    "blob": "c911b86698f92e45471bf7743c28f897edb266b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 199,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6284914f219fe1c0dbf13edd3c522307f64df32016d1f88411ee9b037fafaa3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaee1da83af2cff06ad2b40ce7eb7f848ac087ba09d6129b8fbefab7c7f82af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulRight [IsometricSMul Gᵐᵒᵖ G] (c : G) : G ≃ᵢ G where
  toEquiv := Equiv.mulRight c
  isometry_toFun a b := edist_mul_right a b c
#align isometry_equiv.mul_right IsometryEquiv.mulRight
#align isometry_equiv.add_right IsometryEquiv.addRight
#align isometry_equiv.mul_right_apply IsometryEquiv.mulRight_apply
#align isometry_equiv.mul_right_to_equiv IsometryEquiv.mulRight_toEquiv
#align isometry_equiv.add_right_apply IsometryEquiv.addRight_apply
#align isometry_equiv.add_right_to_equiv IsometryEquiv.addRight_toEquiv

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c911b86698f92e45471bf7743c28f897edb266b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
