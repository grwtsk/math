# deferredMain_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bedc7fe-055b-660b-9f90-48837afd3320",
  "kind": "theorem",
  "lexical_name": "deferredMain_coverage",
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
  "slug": "deferredmain-coverage--a0df8e8221ecdff276426476",
  "source": {
    "blob": "35721b27bd3356dd87185f2a74e8d7632d535b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 237,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0df8e8221ecdff276426476cc4f49fb8565571d5b8af891663c231ae1aeabd0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bedc7fe-055b-660b-9f90-48837afd3320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deferredMain_coverage (A : ℝ) (P : Finset ℕ)
    (hP : ∀ r ∈ P, r.Prime)
    (hcover : ∀ r, r.Prime → r ≤ vaughanCutoff A → r ∈ P) :
    deferredMain A P = 0 := by
  unfold deferredMain
  rw [weightedDivisors_coverage P (vaughanCutoff A) (divisorCounterterm A) hP hcover,
    independentMainTerm_eq_baseline_add_divisors]
  unfold realMoebius
  ring

/-- The source's complete arithmetic output, with the retained unit-divisor boundary and all mixed small-prime work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35721b27bd3356dd87185f2a74e8d7632d535b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
