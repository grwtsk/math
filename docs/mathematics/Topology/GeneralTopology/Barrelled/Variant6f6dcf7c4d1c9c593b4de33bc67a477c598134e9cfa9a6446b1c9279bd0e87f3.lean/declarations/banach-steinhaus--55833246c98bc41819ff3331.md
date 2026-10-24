# banach_steinhaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe988f45065c716f045899324c7627db7047fde4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a57e70dd-0e9c-acd9-39bb-de86412025f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7dbc6f39-e02b-57e3-8b85-1329c3c2da32",
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
  "slug": "banach-steinhaus--55833246c98bc41819ff3331",
  "source": {
    "blob": "fe988f45065c716f045899324c7627db7047fde4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55833246c98bc41819ff3331bccb05ea425d2644a438b4b80e224354c8585f83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dbc6f39-e02b-57e3-8b85-1329c3c2da32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–181.

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

variable [ContinuousSMul 𝕜₂ F]

/-- Given a sequence of continuous linear maps which converges pointwise and for which the
domain is barrelled, the Banach-Steinhaus theorem is used to guarantee that the limit map
is a *continuous* linear map as well.

This actually works for any *countably generated* filter instead of `atTop : Filter ℕ`,
but the proof ultimately goes back to sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe988f45065c716f045899324c7627db7047fde4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
