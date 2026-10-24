# _root_.GRWTSK.Topology.GeneralTopology.WithSeminorms.Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.WithSeminorms.uniformEquicontinuous_iff_bddAbove_and_continuous_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:246a51cb-177b-02ca-88e5-4c7114c91975",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.WithSeminorms.Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.WithSeminorms.uniformEquicontinuous_iff_bddAbove_and_continuous_iSup",
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
  "slug": "root-grwtsk-topology-generaltopology-withseminorms-variantd5066d8222421a--fe9352234936dbd8546df593",
  "source": {
    "blob": "7f3924ddac07ed2ec226eb44c9d26b21ae4dbcd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 663,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe9352234936dbd8546df59339434bf588ec427e7c57862e59b019fcbade3f0a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:246a51cb-177b-02ca-88e5-4c7114c91975`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.WithSeminorms.Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.WithSeminorms.uniformEquicontinuous_iff_bddAbove_and_continuous_iSup {κ : Type*}
    {q : SeminormFamily 𝕜₂ F ι'} [UniformSpace E] [IsUniformAddGroup E] [u : UniformSpace F]
    [IsUniformAddGroup F] (hq : WithSeminorms q) [ContinuousSMul 𝕜 E]
    (f : κ → E →ₛₗ[σ₁₂] F) :
    UniformEquicontinuous ((↑) ∘ f) ↔ ∀ i,
    BddAbove (range fun k ↦ (q i).comp (f k)) ∧
      Continuous (⨆ k, (q i).comp (f k)) :=
  (hq.equicontinuous_TFAE f).out 2 4

end Seminorm

section Congr

namespace WithSeminorms

variable [Nonempty ι] [Nonempty ι']
variable [NormedField 𝕜] [AddCommGroup E] [Module 𝕜 E]
variable [NormedField 𝕜₂] [AddCommGroup F] [Module 𝕜₂ F]
variable {σ₁₂ : 𝕜 →+* 𝕜₂} [RingHomIsometric σ₁₂]

/-- Two families of seminorms `p` and `q` on the same space generate the same topology
if each `p i` is bounded by some `C • Finset.sup s q` and vice-versa.

We formulate these boundedness assumptions as `Seminorm.IsBounded q p LinearMap.id` (and
vice-versa) to reuse the API. Furthermore, we don't actually state it as an equality of topologies
but as a way to deduce `WithSeminorms q` from `WithSeminorms p`, since this should be more
useful in practice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3924ddac07ed2ec226eb44c9d26b21ae4dbcd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
