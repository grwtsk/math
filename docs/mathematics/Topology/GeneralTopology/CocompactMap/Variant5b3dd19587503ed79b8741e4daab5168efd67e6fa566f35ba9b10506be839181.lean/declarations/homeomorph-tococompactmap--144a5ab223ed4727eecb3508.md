# Homeomorph.toCocompactMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c53d87f92f81398f3e2f744846ddfad16b701ad961637b5ecf503f151a9eeae",
  "kind": "def",
  "lexical_name": "Homeomorph.toCocompactMap",
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
  "slug": "homeomorph-tococompactmap--144a5ab223ed4727eecb3508",
  "source": {
    "blob": "2ef2800a54d4f177fc9258237e15e652fe0076a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:144a5ab223ed4727eecb350843eab3e1a4ecf32e363c5d4f186f397461fb9c4a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c53d87f92f81398f3e2f744846ddfad16b701ad961637b5ecf503f151a9eeae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homeomorph.toCocompactMap {α β : Type*} [TopologicalSpace α] [TopologicalSpace β]
    (f : α ≃ₜ β) : CocompactMap α β where
  toFun := f
  continuous_toFun := f.continuous
  cocompact_tendsto' := by
    refine' CocompactMap.tendsto_of_forall_preimage fun K hK => _
    erw [K.preimage_equiv_eq_image_symm]
    exact hK.image f.symm.continuous
#align homeomorph.to_cocompact_map Homeomorph.toCocompactMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef2800a54d4f177fc9258237e15e652fe0076a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
