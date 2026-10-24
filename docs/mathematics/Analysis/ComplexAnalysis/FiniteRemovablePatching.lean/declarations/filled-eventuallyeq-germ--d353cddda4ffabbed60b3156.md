# filled_eventuallyEq_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:631c9005-a83c-9d56-d434-ac3029e8c785",
  "kind": "theorem",
  "lexical_name": "filled_eventuallyEq_germ",
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
  "slug": "filled-eventuallyeq-germ--d353cddda4ffabbed60b3156",
  "source": {
    "blob": "c6f4552b5960bf0381cecd43a7ebf4fd09df81f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 75,
    "path": "GRWTSK/Analysis/Complex/FiniteRemovablePatching.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d353cddda4ffabbed60b31567443adfee4d2ec8b2652778bf628587839ae097b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:631c9005-a83c-9d56-d434-ac3029e8c785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filled_eventuallyEq_germ (data : LocalRemovalData raw singular)
    (a : ℂ) (ha : a ∈ singular) :
    data.filled =ᶠ[𝓝 a] data.germ a := by
  classical
  have hagree := data.germ_agrees a ha
  rw [eventually_nhdsWithin_iff] at hagree
  filter_upwards [eventually_not_mem_erase singular a, hagree] with z havoid hzAgree
  by_cases hza : z = a
  · subst z
    exact data.filled_of_mem ha
  · have hnot : z ∉ singular := by
      intro hz
      exact havoid (Finset.mem_erase.mpr ⟨hza, hz⟩)
    rw [data.filled_of_not_mem hnot]
    exact hzAgree (by simpa using hza)

/-- Away from the finite set, the patch agrees with the raw function on a full
neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteRemovablePatching.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f4552b5960bf0381cecd43a7ebf4fd09df81f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
