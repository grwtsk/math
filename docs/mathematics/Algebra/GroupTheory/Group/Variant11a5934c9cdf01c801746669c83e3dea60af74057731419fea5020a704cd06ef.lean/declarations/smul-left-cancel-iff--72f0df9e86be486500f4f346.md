# smul_left_cancel_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96294186-c435-697b-f4d6-d675bf341fe8",
  "kind": "theorem",
  "lexical_name": "smul_left_cancel_iff",
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
  "slug": "smul-left-cancel-iff--72f0df9e86be486500f4f346",
  "source": {
    "blob": "d494d72a30daea300b0824d653900cf714ad1a5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 176,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72f0df9e86be486500f4f346498924cb38a163c77ff95b50ba21cb0a6c84f7d3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96294186-c435-697b-f4d6-d675bf341fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_left_cancel_iff (g : α) {x y : β} : g • x = g • y ↔ x = y :=
  (MulAction.injective g).eq_iff
#align smul_left_cancel_iff smul_left_cancel_iff
#align vadd_left_cancel_iff vadd_left_cancel_iff

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d494d72a30daea300b0824d653900cf714ad1a5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
