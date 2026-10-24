# mainVector_eq_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f06207e8741b84c417d4754eff5be7409e8e619",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:008cf0a2-d985-b236-709f-0cacab622cca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8be9882b-1060-4789-c7fe-5d0abfab9927",
  "kind": "theorem",
  "lexical_name": "mainVector_eq_add",
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
  "slug": "mainvector-eq-add--af7b213980569f41a49cf6c9",
  "source": {
    "blob": "7f06207e8741b84c417d4754eff5be7409e8e619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af7b213980569f41a49cf6c9f51515295804eab5f5b916271688031eb4f7f47e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8be9882b-1060-4789-c7fe-5d0abfab9927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mainVector_eq_add (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε)
    (Y : ℝ) (hY : 1 ≤ Y) :
    divisorMainVector X ε hX hε Y hY =
      coreResidualVector X ε hX Y + divisorRemainderVector ε hε Y hY := by
  have hm : divisorMainVector X ε hX hε Y hY =ᵐ[volume] divisorMainCore X ε Y :=
    (divisorMainCore_memLp X ε hX hε Y hY).coeFn_toLp
  have hr : divisorRemainderVector ε hε Y hY =ᵐ[volume] divisorRemainderCore ε Y :=
    (divisorRemainderCore_memLp ε hε Y hY).coeFn_toLp
  apply Lp.ext
  filter_upwards [hm, hr, coreResidualVector_ae X ε hX Y,
    Lp.coeFn_add (coreResidualVector X ε hX Y) (divisorRemainderVector ε hε Y hY)]
    with u hm hr hc ha
  simp only [Pi.add_apply] at ha
  rw [hm, ha, hc, hr, mainCore_eq_add X ε hX Y]
  rfl

/-- Filtering the actual core and its expanded arithmetic main changes their norms by at most
the proved quadratic remainder budget, uniformly in the admitted filter parameters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f06207e8741b84c417d4754eff5be7409e8e619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
