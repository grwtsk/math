# pullbackHomeoPreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5db6e9cd7d898216cd0ba50a21a2781b4810b09943bf170dd1153e36b75d29c",
  "kind": "def",
  "lexical_name": "pullbackHomeoPreimage",
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
  "slug": "pullbackhomeopreimage--9308ea480900c9a855e91444",
  "source": {
    "blob": "6046e580c381b8b72dfed57006c09fb974a994b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9308ea480900c9a855e914447c8928b686452503f687a76618fe772bcbe71738",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5db6e9cd7d898216cd0ba50a21a2781b4810b09943bf170dd1153e36b75d29c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackHomeoPreimage
    {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
    (f : X → Z) (hf : Continuous f) (g : Y → Z) (hg : IsEmbedding g) :
    { p : X × Y // f p.1 = g p.2 } ≃ₜ f ⁻¹' Set.range g where
  toFun := fun x ↦ ⟨x.1.1, _, x.2.symm⟩
  invFun := fun x ↦ ⟨⟨x.1, Exists.choose x.2⟩, (Exists.choose_spec x.2).symm⟩
  left_inv := by
    intro x
    ext <;> dsimp
    apply hg.injective
    convert x.prop
    exact Exists.choose_spec (p := fun y ↦ g y = f (↑x : X × Y).1) _
  right_inv := fun _ ↦ rfl
  continuous_toFun := by fun_prop
  continuous_invFun := by
    apply Continuous.subtype_mk
    refine continuous_subtype_val.prodMk <| hg.isInducing.continuous_iff.mpr ?_
    convert hf.comp continuous_subtype_val
    ext x
    exact Exists.choose_spec x.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6046e580c381b8b72dfed57006c09fb974a994b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
