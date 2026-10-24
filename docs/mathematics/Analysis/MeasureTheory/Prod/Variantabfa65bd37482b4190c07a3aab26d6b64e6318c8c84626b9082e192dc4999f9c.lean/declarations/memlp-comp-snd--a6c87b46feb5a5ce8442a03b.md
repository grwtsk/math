# MemLp.comp_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dd157a7-c1b3-4638-66c4-ce74b8ecbb66",
  "kind": "lemma",
  "lexical_name": "MemLp.comp_snd",
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
  "slug": "memlp-comp-snd--a6c87b46feb5a5ce8442a03b",
  "source": {
    "blob": "5a84892a3b2db9a7ad41410e180e1806c5cca64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantabfa65bd37482b4190c07a3aab26d6b64e6318c8c84626b9082e192dc4999f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6c87b46feb5a5ce8442a03b9bbf55cd99b279d805e5a1ed03392ff8e27f103d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantabfa65bd37482b4190c07a3aab26d6b64e6318c8c84626b9082e192dc4999f9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dd157a7-c1b3-4638-66c4-ce74b8ecbb66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MemLp.comp_snd {f : β → ε} (hf : MemLp f p ν) (μ : Measure α) [IsFiniteMeasure μ]
    [SFinite ν] :
    MemLp (fun x ↦ f x.2) p (μ.prod ν) := by
  have hf' : MemLp f p (μ .univ • ν) := hf.smul_measure (by simp)
  change MemLp (f ∘ Prod.snd) p (μ.prod ν)
  rw [← memLp_map_measure_iff ?_ (by fun_prop)]
  · simpa using hf'
  · simpa using hf'.aestronglyMeasurable

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantabfa65bd37482b4190c07a3aab26d6b64e6318c8c84626b9082e192dc4999f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantabfa65bd37482b4190c07a3aab26d6b64e6318c8c84626b9082e192dc4999f9c.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a84892a3b2db9a7ad41410e180e1806c5cca64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
