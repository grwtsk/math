# isExtreme_sInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "326bbf8804716ccbf3108711e4582ce50b2f67bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:898e42d6-522b-1cc4-b2eb-ff0c9d35a050",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b00d0bcd-d357-a60d-eb81-52df71cfff98",
  "kind": "theorem",
  "lexical_name": "isExtreme_sInter",
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
  "slug": "isextreme-sinter--da7ef0975ca00d0841a843fd",
  "source": {
    "blob": "326bbf8804716ccbf3108711e4582ce50b2f67bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 125,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da7ef0975ca00d0841a843fdd01da5c699c9fe1295827564b88647132d878de4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b00d0bcd-d357-a60d-eb81-52df71cfff98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isExtreme_sInter {F : Set (Set E)} (hF : F.Nonempty) (hAF : ∀ B ∈ F, IsExtreme 𝕜 A B) :
    IsExtreme 𝕜 A (⋂₀ F) := by simpa [sInter_eq_biInter] using isExtreme_biInter hF hAF

/-- A point `x` is an extreme point of a set `A`
iff `x ∈ A` and for any `x₁`, `x₂` such that `x` belongs to the open segment `(x₁, x₂)`,
we have `x₁ = x` and `x₂ = x`.

We used to use the RHS as the definition of `extremePoints`.
However, the conclusion `x₂ = x` is redundant,
so we changed the definition to the RHS of `mem_extremePoints_iff_left`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326bbf8804716ccbf3108711e4582ce50b2f67bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
