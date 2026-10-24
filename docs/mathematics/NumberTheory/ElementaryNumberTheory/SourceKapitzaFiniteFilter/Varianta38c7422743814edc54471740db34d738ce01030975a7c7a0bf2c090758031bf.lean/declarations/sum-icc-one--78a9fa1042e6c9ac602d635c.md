# sum_Icc_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd92c4cb-7beb-9056-3d2f-73e1476b2e91",
  "kind": "theorem",
  "lexical_name": "sum_Icc_one",
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
  "slug": "sum-icc-one--78a9fa1042e6c9ac602d635c",
  "source": {
    "blob": "937c4b47e07749408853d6ccbd8e043d6dca938e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 216,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78a9fa1042e6c9ac602d635ca44afffb4641f82d8700aa866aae6df7793ce327",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd92c4cb-7beb-9056-3d2f-73e1476b2e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Icc_one (f : ℕ → ℝ) (N : ℕ) (hN : 1 ≤ N) :
    (∑ n ∈ Finset.Icc 1 N, f n) = f 1 + ∑ n ∈ Finset.Icc 2 N, f n := by
  have he : Finset.Icc 1 N = insert 1 (Finset.Icc 2 N) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  rw [he, Finset.sum_insert (by simp)]

/-- Divisors are the exact bounded positive divisor filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `937c4b47e07749408853d6ccbd8e043d6dca938e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
