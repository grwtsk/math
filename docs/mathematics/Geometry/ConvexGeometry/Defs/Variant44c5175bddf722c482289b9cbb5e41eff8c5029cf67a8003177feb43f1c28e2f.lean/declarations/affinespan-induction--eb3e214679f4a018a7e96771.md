# affineSpan_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50edee95-9cc6-fb20-7866-677900c6e375",
  "kind": "theorem",
  "lexical_name": "affineSpan_induction'",
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
  "slug": "affinespan-induction--eb3e214679f4a018a7e96771",
  "source": {
    "blob": "c5b23f6e1e00b88dfd8e552d56bd1ac6fcffae35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 883,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb3e214679f4a018a7e9677102969116914acfc45469500936de0ed7fd7ce560",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50edee95-9cc6-fb20-7866-677900c6e375`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 883–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_induction' {s : Set P} {p : ∀ x, x ∈ affineSpan k s → Prop}
    (mem : ∀ (y) (hys : y ∈ s), p y (subset_affineSpan k _ hys))
    (smul_vsub_vadd : ∀ (c : k) (u hu v hv w hw), p u hu → p v hv → p w hw →
      p (c • (u -ᵥ v) +ᵥ w) (AffineSubspace.smul_vsub_vadd_mem _ _ hu hv hw))
    {x : P} (h : x ∈ affineSpan k s) : p x h := by
  suffices ∃ (hx : x ∈ affineSpan k s), p x hx from this.elim fun hx hc ↦ hc
  -- TODO: `induction h using affineSpan_induction` gives the error:
  -- extra targets for '@affineSpan_induction'
  -- It seems that the `induction` tactic has decided to ignore the clause
  -- `using affineSpan_induction` and use `Exists.rec` instead.
  refine affineSpan_induction h ?mem ?smul_vsub_vadd
  · exact fun y hy ↦ ⟨subset_affineSpan _ _ hy, mem y hy⟩
  · exact fun c u v w hu hv hw ↦
      hu.elim fun hu' hu ↦ hv.elim fun hv' hv ↦ hw.elim fun hw' hw ↦
        ⟨AffineSubspace.smul_vsub_vadd_mem _ _ hu' hv' hw',
              smul_vsub_vadd _ _ _ _ _ _ _ hu hv hw⟩

variable (k)

/-- The difference between two points lies in their `vectorSpan`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean#L883).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b23f6e1e00b88dfd8e552d56bd1ac6fcffae35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
