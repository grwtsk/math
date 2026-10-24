# sum_erase_erase_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbba5493-f9d8-6c1b-f3c3-64c672338e1a",
  "kind": "lemma",
  "lexical_name": "sum_erase_erase_comm",
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
  "slug": "sum-erase-erase-comm--79c89183a1ab0193dbd0aa40",
  "source": {
    "blob": "71a182efdde48d930977e4cef0783d35ca3052db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79c89183a1ab0193dbd0aa4084cf32b4d5cf42f7a6a2ea2d9f8a5d5679e3f275",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbba5493-f9d8-6c1b-f3c3-64c672338e1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_erase_erase_comm {M : Type*} [AddCommMonoid M] (m : ι) (G : ι → ι → M) :
    ∑ n ∈ Finset.univ.erase m, ∑ l ∈ (Finset.univ.erase n).erase m, G n l
      = ∑ l ∈ Finset.univ.erase m, ∑ n ∈ (Finset.univ.erase l).erase m, G n l := by
  rw [Finset.sum_comm' (t' := Finset.univ.erase m)
    (s' := fun l => (Finset.univ.erase l).erase m)]
  intro n l
  simp only [Finset.mem_erase, Finset.mem_univ, and_true]
  constructor
  · rintro ⟨h1, h2, h3⟩
    exact ⟨⟨h1, Ne.symm h3⟩, h2⟩
  · rintro ⟨⟨h1, h2⟩, h3⟩
    exact ⟨h1, h3, Ne.symm h2⟩

/-- **Step 1**: `U ≤ 73 Σ t²` for admissible `(freq, δ)` and nonneg `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71a182efdde48d930977e4cef0783d35ca3052db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
