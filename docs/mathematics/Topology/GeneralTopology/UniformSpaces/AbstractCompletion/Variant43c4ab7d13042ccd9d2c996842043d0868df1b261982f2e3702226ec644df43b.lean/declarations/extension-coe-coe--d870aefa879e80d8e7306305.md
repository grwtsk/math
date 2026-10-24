# extension₂_coe_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1604fc4-2977-99bb-a21b-c1e234821a4c",
  "kind": "theorem",
  "lexical_name": "extension₂_coe_coe",
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
  "slug": "extension-coe-coe--d870aefa879e80d8e7306305",
  "source": {
    "blob": "55f93e66b140eb952949ec72a21d01b50c951af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 379,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d870aefa879e80d8e73063056dfde6f4b11164db2b877e7c0dae9f12eb4306c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1604fc4-2977-99bb-a21b-c1e234821a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extension₂_coe_coe (hf : UniformContinuous <| uncurry f) (a : α) (b : β) :
    pkg.extend₂ pkg' f (ι a) (ι' b) = f a b :=
  show (pkg.prod pkg').extend (uncurry f) ((pkg.prod pkg').coe (a, b)) = uncurry f (a, b) from
    (pkg.prod pkg').extend_coe hf _

end T0Space

variable {f : α → β → γ}
variable [CompleteSpace γ] (f)

set_option backward.isDefEq.respectTransparency false in
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55f93e66b140eb952949ec72a21d01b50c951af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
