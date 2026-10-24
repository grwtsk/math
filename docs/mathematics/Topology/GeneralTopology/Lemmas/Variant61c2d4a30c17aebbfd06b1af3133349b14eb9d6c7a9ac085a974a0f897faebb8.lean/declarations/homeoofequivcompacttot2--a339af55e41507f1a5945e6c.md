# homeoOfEquivCompactToT2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1453c456e9adf580ecb87a8a4af387c538c62e996427f19dbd3384e65692c2ff",
  "kind": "def",
  "lexical_name": "homeoOfEquivCompactToT2",
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
  "slug": "homeoofequivcompacttot2--a339af55e41507f1a5945e6c",
  "source": {
    "blob": "f5f5e3b6bc70616bc7a576fa0e2d2328f85d2da0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 447,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a339af55e41507f1a5945e6c4988046a95e5149e1316db23be1f6260db9eaf72",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1453c456e9adf580ecb87a8a4af387c538c62e996427f19dbd3384e65692c2ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeoOfEquivCompactToT2 [CompactSpace X] [T2Space Y] {f : X ≃ Y} (hf : Continuous f) : X ≃ₜ Y :=
  { f with
    continuous_toFun := hf
    continuous_invFun := hf.continuous_symm_of_equiv_compact_to_t2 }

end Continuous

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  {W : Type*} [TopologicalSpace W] {f : X → Y}

namespace IsHomeomorph
variable (hf : IsHomeomorph f)
include hf

variable (f) in
/-- Bundled homeomorphism constructed from a map that is a homeomorphism. -/
@[simps! toEquiv apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5f5e3b6bc70616bc7a576fa0e2d2328f85d2da0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
