# zipWith_neLocus_eq_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8af1771-deae-7922-7be6-9bec5b3ff53b",
  "kind": "theorem",
  "lexical_name": "zipWith_neLocus_eq_left",
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
  "slug": "zipwith-nelocus-eq-left--7afc0a665aada3d01f35176b",
  "source": {
    "blob": "51c7ab204dff92cee81709bd447baa1bc4c980de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7afc0a665aada3d01f35176bf90a4b3516a5fa019eb27b3b67f20989f15363af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8af1771-deae-7922-7be6-9bec5b3ff53b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zipWith_neLocus_eq_left [DecidableEq N] [Zero M] [DecidableEq P] [Zero P] [Zero N]
    {F : M → N → P} (F0 : F 0 0 = 0) (f : α →₀ M) (g₁ g₂ : α →₀ N)
    (hF : ∀ f, Function.Injective fun g => F f g) :
    (zipWith F F0 f g₁).neLocus (zipWith F F0 f g₂) = g₁.neLocus g₂ := by
  ext
  simpa only [mem_neLocus] using (hF _).ne_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51c7ab204dff92cee81709bd447baa1bc4c980de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
