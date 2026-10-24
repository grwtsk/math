# mellin_convergent_of_isBigO_scalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1334cf635cc67378b0eec1a0bce7ba0190ff3e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84606fa9-aa1d-62ad-da76-975859f0abd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94ef5fa5-4bef-ed4f-1319-1d21fcd7e0e1",
  "kind": "theorem",
  "lexical_name": "mellin_convergent_of_isBigO_scalar",
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
  "slug": "mellin-convergent-of-isbigo-scalar--c24ff4ee35087d6faf145e00",
  "source": {
    "blob": "a1334cf635cc67378b0eec1a0bce7ba0190ff3e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 271,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c24ff4ee35087d6faf145e008d1c120b8b8f32e17d61e4ac4975691141ce2b0a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94ef5fa5-4bef-ed4f-1319-1d21fcd7e0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_convergent_of_isBigO_scalar {a b : ℝ} {f : ℝ → ℝ} {s : ℝ}
    (hfc : LocallyIntegrableOn f <| Ioi 0) (hf_top : f =O[atTop] (· ^ (-a)))
    (hs_top : s < a) (hf_bot : f =O[𝓝[>] 0] (· ^ (-b))) (hs_bot : b < s) :
    IntegrableOn (fun t : ℝ => t ^ (s - 1) * f t) (Ioi 0) := by
  obtain ⟨c1, hc1, hc1'⟩ := mellin_convergent_top_of_isBigO hfc.aestronglyMeasurable hf_top hs_top
  obtain ⟨c2, hc2, hc2'⟩ :=
    mellin_convergent_zero_of_isBigO hfc.aestronglyMeasurable hf_bot hs_bot
  have : Ioi 0 = Ioc 0 c2 ∪ Ioc c2 c1 ∪ Ioi c1 := by
    rw [union_assoc, Ioc_union_Ioi (le_max_right _ _),
      Ioc_union_Ioi ((min_le_left _ _).trans (le_max_right _ _)), min_eq_left (lt_min hc2 hc1).le]
  rw [this, integrableOn_union, integrableOn_union]
  refine' ⟨⟨hc2', integrableOn_Icc_iff_integrableOn_Ioc.mp _⟩, hc1'⟩
  refine'
    (hfc.continuousOn_mul _ isOpen_Ioi).integrableOn_compact_subset
      (fun t ht => (hc2.trans_le ht.1 : 0 < t)) isCompact_Icc
  exact ContinuousAt.continuousOn fun t ht => continuousAt_rpow_const _ _ <| Or.inl <| ne_of_gt ht
set_option linter.uppercaseLean3 false in
#align mellin_convergent_of_is_O_scalar mellin_convergent_of_isBigO_scalar

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1334cf635cc67378b0eec1a0bce7ba0190ff3e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
