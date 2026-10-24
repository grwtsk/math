# ae_eq_trim_of_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7cd1cccdb7e570b3d7e87fba6e69fe4f2473ebc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 408,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e87f888-de21-9615-ec51-317949d17f5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76f4daba-8afb-295d-c69a-0cc0a80226e2",
  "kind": "theorem",
  "lexical_name": "ae_eq_trim_of_measurable",
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
  "slug": "ae-eq-trim-of-measurable--b439d355d9909ac7ddaa827a",
  "source": {
    "blob": "e7cd1cccdb7e570b3d7e87fba6e69fe4f2473ebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 408,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b439d355d9909ac7ddaa827aadf6f8bad57def10edb13ac8ecea7adf28482f77",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76f4daba-8afb-295d-c69a-0cc0a80226e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_trim_of_measurable {α E} {m m0 : MeasurableSpace α} {μ : Measure α}
    [MeasurableSpace E] [AddGroup E] [MeasurableSingletonClass E] [MeasurableSub₂ E]
    (hm : m ≤ m0) {f g : α → E} (hf : Measurable[m] f) (hg : Measurable[m] g) (hfg : f =ᵐ[μ] g) :
    f =ᶠ[@Measure.ae α m (μ.trim hm)] g := by
  rwa [Filter.EventuallyEq, @ae_iff _ m, trim_measurableSet_eq hm _]
  exact @MeasurableSet.compl α _ m (@measurableSet_eq_fun α m E _ _ _ _ _ _ hf hg)
#align ae_eq_trim_of_measurable ae_eq_trim_of_measurable

end Div

/-- We say that a type has `MeasurableNeg` if `x ↦ -x` is a measurable function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7cd1cccdb7e570b3d7e87fba6e69fe4f2473ebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
