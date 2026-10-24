# orderedSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75515c8ba0de46c44bfc25dc25f5833ae32840f4fd5bed01e660e925546ee0cf",
  "kind": "instance",
  "lexical_name": "orderedSemiring",
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
  "slug": "orderedsemiring--491dc834da53bd064da45828",
  "source": {
    "blob": "4e1afc97cb9eff7d8be6dc1dd124d418361485c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 864,
    "line": 854,
    "path": "GRWTSK/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:491dc834da53bd064da45828932cf2ecf8a8ae99937cb855a5e704c4dc3e0d23",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75515c8ba0de46c44bfc25dc25f5833ae32840f4fd5bed01e660e925546ee0cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 854–864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance orderedSemiring [OrderedSemiring β] : OrderedSemiring (Germ l β) :=
  { Germ.semiring,
    Germ.orderedAddCommMonoid with
    zero_le_one := const_le zero_le_one
    mul_le_mul_of_nonneg_left := fun x y z =>
      inductionOn₃ x y z fun _f _g _h hfg hh =>
          hh.mp <| hfg.mono fun _a => mul_le_mul_of_nonneg_left
    mul_le_mul_of_nonneg_right := fun x y z =>
      inductionOn₃ x y z fun _f _g _h hfg hh =>
          hh.mp <| hfg.mono fun _a => mul_le_mul_of_nonneg_right }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean#L854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1afc97cb9eff7d8be6dc1dd124d418361485c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
