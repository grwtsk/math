# banach_steinhaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da68ab4a-3add-9c94-964f-c12f5c4198d3",
  "kind": "theorem",
  "lexical_name": "banach_steinhaus",
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
  "slug": "banach-steinhaus--9f5fb04779d203cc22a2c3bf",
  "source": {
    "blob": "11f39fb0884cb246608a950d2960e942e1491c64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f5fb04779d203cc22a2c3bfe40d53425d3cdac2145a23d60261b8638b62d022",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da68ab4a-3add-9c94-964f-c12f5c4198d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem banach_steinhaus (H : ∀ k x, BddAbove (range fun i ↦ q k (𝓕 i x))) :
    UniformEquicontinuous ((↑) ∘ 𝓕) := by
  -- We just have to prove that `⊔ i, (q k) ∘ (𝓕 i)` is a (well-defined) continuous seminorm
  -- for all `k`.
  refine (hq.uniformEquicontinuous_iff_bddAbove_and_continuous_iSup (toLinearMap ∘ 𝓕)).mpr ?_
  intro k
  -- By assumption the supremum `⊔ i, q k (𝓕 i x)` is well-defined for all `x`, hence the
  -- supremum `⊔ i, (q k) ∘ (𝓕 i)` is well defined in the lattice of seminorms.
  have : BddAbove (range fun i ↦ (q k).comp (𝓕 i).toLinearMap) := by
    rw [Seminorm.bddAbove_range_iff]
    exact H k
  -- By definition of the lattice structure on seminorms, `⊔ i, (q k) ∘ (𝓕 i)` is the *pointwise*
  -- supremum of the continuous seminorms `(q k) ∘ (𝓕 i)`. Since `E` is barrelled, this supremum
  -- is continuous.
  exact ⟨this, Seminorm.continuous_iSup _
    (fun i ↦ (hq.continuous_seminorm k).comp (𝓕 i).continuous) this⟩

end WithSeminorms

section PolynormableSpace

open Bornology

variable [UniformSpace E] [UniformSpace F] [IsUniformAddGroup E] [IsUniformAddGroup F]
    [ContinuousSMul 𝕜₁ E] [BarrelledSpace 𝕜₁ E] {𝓕 : ι → E →SL[σ₁₂] F} [PolynormableSpace 𝕜₂ F]

/-- The **Banach-Steinhaus** theorem, or **Uniform Boundedness Principle**, for maps from a
barrelled space to any polynormable space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f39fb0884cb246608a950d2960e942e1491c64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
