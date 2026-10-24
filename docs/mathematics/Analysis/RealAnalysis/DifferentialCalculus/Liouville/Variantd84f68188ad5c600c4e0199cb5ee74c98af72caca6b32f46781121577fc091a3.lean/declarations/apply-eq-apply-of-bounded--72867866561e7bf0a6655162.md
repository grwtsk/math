# apply_eq_apply_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f3c5d94712fc1166a4951e70a723bac46ff1d4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28af0455-935b-5cc0-cd07-e583d5790ca2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a5cc43b-ebdd-cce0-aaf0-e932be0d3859",
  "kind": "theorem",
  "lexical_name": "apply_eq_apply_of_bounded",
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
  "slug": "apply-eq-apply-of-bounded--72867866561e7bf0a6655162",
  "source": {
    "blob": "3f3c5d94712fc1166a4951e70a723bac46ff1d4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72867866561e7bf0a66551625437f20b3bb66d2dfbe1ce72dbcbdc444864c092",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a5cc43b-ebdd-cce0-aaf0-e932be0d3859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_apply_of_bounded {f : E → F} (hf : Differentiable ℂ f) (hb : Bounded (range f))
    (z w : E) : f z = f w := by
  set g : ℂ → F := f ∘ fun t : ℂ => t • (w - z) + z
  suffices g 0 = g 1 by simpa
  apply liouville_theorem_aux
  exacts [hf.comp ((differentiable_id.smul_const (w - z)).add_const z),
    hb.mono (range_comp_subset_range _ _)]
#align differentiable.apply_eq_apply_of_bounded Differentiable.apply_eq_apply_of_bounded

/-- **Liouville's theorem**: a complex differentiable bounded function is a constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f3c5d94712fc1166a4951e70a723bac46ff1d4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
