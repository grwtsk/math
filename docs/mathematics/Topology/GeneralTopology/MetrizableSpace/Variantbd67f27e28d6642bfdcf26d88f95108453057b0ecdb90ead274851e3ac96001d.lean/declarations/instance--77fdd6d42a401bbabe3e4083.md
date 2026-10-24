# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bdecd8961d7235be2b0e7a1ce96fad57af60907126bfa6cc962d15011ea06db",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--77fdd6d42a401bbabe3e4083",
  "source": {
    "blob": "196b5909015716ce90be19ecaf83e4de4fc08142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77fdd6d42a401bbabe3e4083873a793ec5f7ecf38c6cf56ca6d9d9099529faf1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bdecd8961d7235be2b0e7a1ce96fad57af60907126bfa6cc962d15011ea06db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) [PseudoMetrizableSpace X] : NormalSpace X where
  normal s t hs ht hst := by
    let _ := pseudoMetrizableSpacePseudoMetric X
    by_cases hee : s = ∅ ∨ t = ∅
    · obtain rfl | rfl := hee <;> simp
    simp only [not_or, ← ne_eq, ← nonempty_iff_ne_empty] at hee
    obtain ⟨hse, hte⟩ := hee
    let g (p : X) := infDist p t - infDist p s
    have hg : Continuous g := by fun_prop
    refine ⟨g ⁻¹' (Ioi 0), g ⁻¹' (Iio 0), isOpen_Ioi.preimage hg, isOpen_Iio.preimage hg,
      fun x hx ↦ ?_, fun x hx ↦ ?_, Ioi_disjoint_Iio_same.preimage g⟩
    · simp [g, infDist_zero_of_mem hx,
        (ht.notMem_iff_infDist_pos hte).mp (hst.notMem_of_mem_left hx)]
    · simp [g, infDist_zero_of_mem hx,
        (hs.notMem_iff_infDist_pos hse).mp (hst.notMem_of_mem_right hx)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MetrizableSpace/Variantbd67f27e28d6642bfdcf26d88f95108453057b0ecdb90ead274851e3ac96001d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `196b5909015716ce90be19ecaf83e4de4fc08142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
