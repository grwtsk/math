# IsDenseInducing.extendRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4743dbd0f0498fa0bff29f6b2b64a2b4b1c54a5166622e0dd80d53c182af45d",
  "kind": "def",
  "lexical_name": "IsDenseInducing.extendRingHom",
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
  "slug": "isdenseinducing-extendringhom--83c7d9bed96fed8a95fb912e",
  "source": {
    "blob": "f9d3ad869e19ba268a11dd8bca70361eaa4d45a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 280,
    "path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83c7d9bed96fed8a95fb912e0f0fc8df242db88e9a1e259534dfa03a4cf8f958",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4743dbd0f0498fa0bff29f6b2b64a2b4b1c54a5166622e0dd80d53c182af45d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsDenseInducing.extendRingHom {i : α →+* β} {f : α →+* γ}
    (ue : IsUniformInducing i) (dr : DenseRange i) (hf : UniformContinuous f) : β →+* γ where
  toFun := (ue.isDenseInducing dr).extend f
  map_one' := by
    convert! IsDenseInducing.extend_eq (ue.isDenseInducing dr) hf.continuous 1
    exacts [i.map_one.symm, f.map_one.symm]
  map_zero' := by
    convert! IsDenseInducing.extend_eq (ue.isDenseInducing dr) hf.continuous 0 <;>
    simp only [map_zero]
  map_add' := by
    have h := (uniformContinuous_uniformly_extend ue dr hf).continuous
    refine fun x y => DenseRange.induction_on₂ dr ?_ (fun a b => ?_) x y
    · exact isClosed_eq (by fun_prop) (by fun_prop)
    · simp_rw [← i.map_add, IsDenseInducing.extend_eq (ue.isDenseInducing dr) hf.continuous _,
        ← f.map_add]
  map_mul' := by
    have h := (uniformContinuous_uniformly_extend ue dr hf).continuous
    refine fun x y => DenseRange.induction_on₂ dr ?_ (fun a b => ?_) x y
    · exact isClosed_eq (by fun_prop) (by fun_prop)
    · simp_rw [← i.map_mul, IsDenseInducing.extend_eq (ue.isDenseInducing dr) hf.continuous _,
        ← f.map_mul]

end UniformExtension
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9d3ad869e19ba268a11dd8bca70361eaa4d45a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
