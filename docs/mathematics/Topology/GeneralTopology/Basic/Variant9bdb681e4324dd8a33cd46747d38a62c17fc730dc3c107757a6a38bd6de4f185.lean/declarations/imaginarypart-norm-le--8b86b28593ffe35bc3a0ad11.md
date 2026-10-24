# imaginaryPart.norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad0c43c2-f6b2-05a4-140e-73fdcf89c9ff",
  "kind": "lemma",
  "lexical_name": "imaginaryPart.norm_le",
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
  "slug": "imaginarypart-norm-le--8b86b28593ffe35bc3a0ad11",
  "source": {
    "blob": "8ec095d0a2a8dfdce645f82a7424a3e204ebc8de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 725,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9bdb681e4324dd8a33cd46747d38a62c17fc730dc3c107757a6a38bd6de4f185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b86b28593ffe35bc3a0ad11352d75bcb4a7197c94a016252fd183337b0fec71",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9bdb681e4324dd8a33cd46747d38a62c17fc730dc3c107757a6a38bd6de4f185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad0c43c2-f6b2-05a4-140e-73fdcf89c9ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma imaginaryPart.norm_le (x : A) : ‖imaginaryPart x‖ ≤ ‖x‖ := by
  calc ‖imaginaryPart x‖ = ‖realPart (Complex.I • (-x))‖ := by simp
    _ ≤ ‖x‖ := by simpa only [smul_neg, map_neg, realPart_I_smul, neg_neg,
        AddSubgroupClass.coe_norm, norm_neg, norm_smul, Complex.norm_I, one_mul] using
        realPart.norm_le (Complex.I • (-x))

end realPart_imaginaryPart
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9bdb681e4324dd8a33cd46747d38a62c17fc730dc3c107757a6a38bd6de4f185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9bdb681e4324dd8a33cd46747d38a62c17fc730dc3c107757a6a38bd6de4f185.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec095d0a2a8dfdce645f82a7424a3e204ebc8de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
