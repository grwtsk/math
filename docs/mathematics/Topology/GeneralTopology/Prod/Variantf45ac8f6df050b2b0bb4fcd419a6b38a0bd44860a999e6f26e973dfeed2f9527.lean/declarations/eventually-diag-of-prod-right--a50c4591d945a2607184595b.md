# Eventually.diag_of_prod_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2ebd28b-c536-8068-ebd6-2ea4cdbd6429",
  "kind": "theorem",
  "lexical_name": "Eventually.diag_of_prod_right",
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
  "slug": "eventually-diag-of-prod-right--a50c4591d945a2607184595b",
  "source": {
    "blob": "53afe17ee8eae880506230d460f7ed9b6c3e7e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a50c4591d945a2607184595bac42945dad768a38d94c6af75c589f9ab096adea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ebd28b-c536-8068-ebd6-2ea4cdbd6429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Eventually.diag_of_prod_right {f : Filter α} {g : Filter γ} {p : α × γ × γ → Prop} :
    (∀ᶠ x in f ×ˢ (g ×ˢ g), p x) → ∀ᶠ x : α × γ in f ×ˢ g, p (x.1, x.2, x.2) := by
  intro h
  obtain ⟨t, ht, s, hs, hst⟩ := eventually_prod_iff.1 h
  refine' (ht.prod_mk hs.diag_of_prod).mono fun x hx => by simp only [hst hx.1 hx.2, Prod.mk.eta]
#align filter.eventually.diag_of_prod_right Filter.Eventually.diag_of_prod_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53afe17ee8eae880506230d460f7ed9b6c3e7e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
