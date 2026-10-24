# extensionHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24a605996bfd2fb773249538730e24247ee03a8885061f71b96f3d56b687c900",
  "kind": "def",
  "lexical_name": "extensionHom",
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
  "slug": "extensionhom--fd610efc6e1691fe994c688f",
  "source": {
    "blob": "d5b263a387f1df4795670a266a730dc7ff61c9c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 154,
    "path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd610efc6e1691fe994c688fa5d3877c3d42904bb3f18ec4568ebef240835a4e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24a605996bfd2fb773249538730e24247ee03a8885061f71b96f3d56b687c900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extensionHom [CompleteSpace β] [T0Space β] : Completion α →+* β :=
  have hf' : Continuous (f : α →+ β) := hf
  -- helping the elaborator
  have hf : UniformContinuous f := uniformContinuous_addMonoidHom_of_continuous hf'
  { toFun := Completion.extension f
    map_zero' := by simp_rw [← coe_zero, extension_coe hf, f.map_zero]
    map_add' := fun a b =>
      Completion.induction_on₂ a b
        (isClosed_eq (continuous_extension.comp continuous_add)
          ((continuous_extension.comp continuous_fst).add
            (continuous_extension.comp continuous_snd)))
        fun a b => by
        simp_rw [← coe_add, extension_coe hf, f.map_add]
    map_one' := by rw [← coe_one, extension_coe hf, f.map_one]
    map_mul' := fun a b =>
      Completion.induction_on₂ a b
        (isClosed_eq (continuous_extension.comp continuous_mul)
          ((continuous_extension.comp continuous_fst).mul
            (continuous_extension.comp continuous_snd)))
        fun a b => by
        simp_rw [← coe_mul, extension_coe hf, f.map_mul] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b263a387f1df4795670a266a730dc7ff61c9c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
