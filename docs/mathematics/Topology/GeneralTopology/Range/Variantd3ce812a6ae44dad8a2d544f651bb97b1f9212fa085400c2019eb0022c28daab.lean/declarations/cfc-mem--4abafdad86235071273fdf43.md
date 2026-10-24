# cfcₙ_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbfdc808-a7ae-511b-55a2-d3b7d7e20828",
  "kind": "lemma",
  "lexical_name": "cfcₙ_mem",
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
  "slug": "cfc-mem--4abafdad86235071273fdf43",
  "source": {
    "blob": "436c8ca481110b3a1d8f2a50e84542d25390af67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 225,
    "path": "GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4abafdad86235071273fdf43643e7cbdec2b43f98f2c4e584164dd0969594581",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbfdc808-a7ae-511b-55a2-d3b7d7e20828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_mem {𝕜' S : Type*} [Monoid 𝕜'] [MulAction 𝕜' A] [SetLike S A] [NonUnitalSubringClass S A]
    [SMul 𝕜 𝕜'] [IsScalarTower 𝕜 𝕜' A] [SMulMemClass S 𝕜' A] [StarMemClass S A] {s : S}
    [hs : IsClosed (s : Set A)] (f : 𝕜 → 𝕜) {a : A} (has : a ∈ s) :
    cfcₙ f a ∈ s :=
  have := SMulMemClass.ofIsScalarTower S 𝕜 𝕜' A
  NonUnitalStarSubalgebra.topologicalClosure_minimal (t := .ofClass s) _ (by simpa) (by simpa)
    (cfcₙ_mem_elemental f a)

end RCLike

open scoped NNReal
variable {A : Type*} [NonUnitalRing A] [StarRing A] [Module ℝ A] [IsScalarTower ℝ A A]
variable [SMulCommClass ℝ A A] [TopologicalSpace A]
variable [IsTopologicalRing A] [T2Space A] [PartialOrder A] [NonnegSpectrumClass ℝ A]
variable [StarOrderedRing A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `436c8ca481110b3a1d8f2a50e84542d25390af67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
