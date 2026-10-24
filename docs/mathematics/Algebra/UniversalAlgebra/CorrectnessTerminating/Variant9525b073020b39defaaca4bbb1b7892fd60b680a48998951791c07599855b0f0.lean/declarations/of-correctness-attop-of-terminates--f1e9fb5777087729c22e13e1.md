# of_correctness_atTop_of_terminates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:500a8607-f02b-7bcc-5126-8d9ebc4058b6",
  "kind": "theorem",
  "lexical_name": "of_correctness_atTop_of_terminates",
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
  "slug": "of-correctness-attop-of-terminates--f1e9fb5777087729c22e13e1",
  "source": {
    "blob": "37370c3153767e31d82807c717a60bc2917c8d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 275,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1e9fb5777087729c22e13e1e051c29db196a17d8ab3c8eea9dede43b39112df",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:500a8607-f02b-7bcc-5126-8d9ebc4058b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_correctness_atTop_of_terminates (terminates : (of v).Terminates) :
    ∀ᶠ n in atTop, v = (of v).convergents n := by
  rw [eventually_atTop]
  obtain ⟨n, terminated_at_n⟩ : ∃ n, (of v).TerminatedAt n
  exact terminates
  use n
  intro m m_geq_n
  rw [convergents_stable_of_terminated m_geq_n terminated_at_n]
  exact of_correctness_of_terminatedAt terminated_at_n
#align generalized_continued_fraction.of_correctness_at_top_of_terminates GeneralizedContinuedFraction.of_correctness_atTop_of_terminates

end GeneralizedContinuedFraction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37370c3153767e31d82807c717a60bc2917c8d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
