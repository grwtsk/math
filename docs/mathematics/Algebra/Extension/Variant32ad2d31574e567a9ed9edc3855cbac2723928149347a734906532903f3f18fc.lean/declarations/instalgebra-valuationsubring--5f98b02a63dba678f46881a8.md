# instAlgebra_valuationSubring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:091c955df1e5ff2ca771a8a88b08450097e3053ffda6d43c8446c84686f09586",
  "kind": "instance",
  "lexical_name": "instAlgebra_valuationSubring",
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
  "slug": "instalgebra-valuationsubring--5f98b02a63dba678f46881a8",
  "source": {
    "blob": "00ccb479f60f5c0eaf022204817de03b2c322dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 190,
    "path": "GRWTSK/Algebra/Extension/Variant32ad2d31574e567a9ed9edc3855cbac2723928149347a734906532903f3f18fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f98b02a63dba678f46881a8ad879fd9ac23129a55eecc9d44a7b34bce66f27e",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variant32ad2d31574e567a9ed9edc3855cbac2723928149347a734906532903f3f18fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:091c955df1e5ff2ca771a8a88b08450097e3053ffda6d43c8446c84686f09586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAlgebra_valuationSubring : Algebra K₀ L₀ :=
  inferInstanceAs (Algebra vK.integer vL.integer)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variant32ad2d31574e567a9ed9edc3855cbac2723928149347a734906532903f3f18fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variant32ad2d31574e567a9ed9edc3855cbac2723928149347a734906532903f3f18fc.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00ccb479f60f5c0eaf022204817de03b2c322dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
