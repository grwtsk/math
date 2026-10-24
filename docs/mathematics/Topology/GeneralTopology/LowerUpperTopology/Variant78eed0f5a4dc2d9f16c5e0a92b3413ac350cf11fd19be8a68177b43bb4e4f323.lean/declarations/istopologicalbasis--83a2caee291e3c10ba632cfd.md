# isTopologicalBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21ec422e-21b2-6cd3-e6a3-ad5f514c091a",
  "kind": "theorem",
  "lexical_name": "isTopologicalBasis",
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
  "slug": "istopologicalbasis--83a2caee291e3c10ba632cfd",
  "source": {
    "blob": "c27d2df7280307e9a366db5c4bbba8dbec1e2a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 289,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83a2caee291e3c10ba632cfdb67aa5baef8c9121e9bbb86f665adf7b25163398",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21ec422e-21b2-6cd3-e6a3-ad5f514c091a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isTopologicalBasis : IsTopologicalBasis (lowerBasis α) := by
  convert! isTopologicalBasis_of_subbasis (topology_eq α)
  simp_rw [lowerBasis, coe_upperClosure, compl_iUnion]
  ext s
  constructor
  · rintro ⟨F, hF, rfl⟩
    refine ⟨(fun a => (Ici a)ᶜ) '' F, ⟨hF.image _, image_subset_iff.2 fun _ _ => ⟨_, rfl⟩⟩, ?_⟩
    simp only [sInter_image]
  · rintro ⟨F, ⟨hF, hs⟩, rfl⟩
    have := hF.to_subtype
    rw [subset_def, Subtype.forall'] at hs
    choose f hf using hs
    exact ⟨_, finite_range f, by simp_rw [biInter_range, hf, sInter_eq_iInter]⟩

/-- A function `f : β → α` with lower topology in the codomain is continuous
if and only if the preimage of every interval `Set.Ici a` is a closed set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c27d2df7280307e9a366db5c4bbba8dbec1e2a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
