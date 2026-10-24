# _root_.GRWTSK.Topology.GeneralTopology.IsTopCompl.Variantea947529899c67508b6762a4d08f096520822095b0d892556811eaf97bff2a93.ContinuousLinearMap.isTopCompl_range_ker_of_leftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2459154-6228-283e-6221-e039397f1733",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsTopCompl.Variantea947529899c67508b6762a4d08f096520822095b0d892556811eaf97bff2a93.ContinuousLinearMap.isTopCompl_range_ker_of_leftInverse",
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
  "slug": "root-grwtsk-topology-generaltopology-istopcompl-variantea947529899c67508--2b56bb41b169063f3d7de1f2",
  "source": {
    "blob": "68f549877fc24502971a74cf128f2b3ca3d29225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b56bb41b169063f3d7de1f259e6fde9cba4068fb2636663052b701c13a3ffbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2459154-6228-283e-6221-e039397f1733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsTopCompl.Variantea947529899c67508b6762a4d08f096520822095b0d892556811eaf97bff2a93.ContinuousLinearMap.isTopCompl_range_ker_of_leftInverse
    (f₁ : M →L[R] N) (f₂ : N →L[R] M) (h : Function.LeftInverse f₂ f₁) :
    f₁.range.IsTopCompl f₂.ker :=
  let p := f₁ ∘L f₂
  have p_idem : IsIdempotentElem p := by ext x; simp [p, h (f₂ x)]
  have range_p : p.range = f₁.range := range_comp_of_range_eq_top _ <|
    range_eq_top_of_surjective _ h.surjective
  have ker_p : p.ker = f₂.ker := ker_comp_of_ker_eq_bot _ <|
    ker_eq_bot_of_injective h.injective
  range_p ▸ ker_p ▸ p_idem.isTopCompl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68f549877fc24502971a74cf128f2b3ca3d29225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
