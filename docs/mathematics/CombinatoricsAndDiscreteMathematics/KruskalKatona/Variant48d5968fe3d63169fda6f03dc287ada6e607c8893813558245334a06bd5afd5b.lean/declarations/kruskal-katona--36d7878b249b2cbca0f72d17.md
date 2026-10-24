# kruskal_katona

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff894e10-00c6-9245-19a6-99ea33de4dff",
  "kind": "theorem",
  "lexical_name": "kruskal_katona",
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
  "slug": "kruskal-katona--36d7878b249b2cbca0f72d17",
  "source": {
    "blob": "4324ed0ff5ea82fc7f5d75b49b76b230fd4dfe7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 280,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36d7878b249b2cbca0f72d17c1edd821b76beeedf5353ba078fa783c0c2e9847",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff894e10-00c6-9245-19a6-99ea33de4dff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kruskal_katona (h𝒜r : (𝒜 : Set (Finset (Fin n))).Sized r) (h𝒞𝒜 : #𝒞 ≤ #𝒜)
    (h𝒞 : IsInitSeg 𝒞 r) : #(∂ 𝒞) ≤ #(∂ 𝒜) := by
  -- WLOG `|𝒜| = |𝒞|`
  obtain ⟨𝒜', h𝒜, h𝒜𝒞⟩ := exists_subset_card_eq h𝒞𝒜
  -- By `kruskal_katona_helper`, we find a fully compressed family `ℬ` of the same size as `𝒜`
  -- whose shadow is no bigger.
  obtain ⟨ℬ, hℬ𝒜, h𝒜ℬ, hℬr, hℬ⟩ := UV.kruskal_katona_helper 𝒜' (h𝒜r.mono (by gcongr))
  -- This means that `ℬ` is an initial segment of the same size as `𝒞`. Hence they are equal and
  -- we are done.
  suffices ℬ = 𝒞 by subst 𝒞; exact hℬ𝒜.trans (by gcongr)
  have hcard : #ℬ = #𝒞 := h𝒜ℬ.symm.trans h𝒜𝒞
  obtain h𝒞ℬ | hℬ𝒞 := h𝒞.total (UV.isInitSeg_of_compressed hℬr hℬ)
  · exact (eq_of_subset_of_card_le h𝒞ℬ hcard.le).symm
  · exact eq_of_subset_of_card_le hℬ𝒞 hcard.ge

/-- An iterated form of the Kruskal-Katona theorem. In particular, the minimum possible iterated
shadow size is attained by initial segments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4324ed0ff5ea82fc7f5d75b49b76b230fd4dfe7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
