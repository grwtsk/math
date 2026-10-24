# integrable_stoppedProcess_of_mem_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc197c66-6f81-b801-cde4-623656bd1dbd",
  "kind": "theorem",
  "lexical_name": "integrable_stoppedProcess_of_mem_finset",
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
  "slug": "integrable-stoppedprocess-of-mem-finset--ecf825c9a9a262d9ad8a96dd",
  "source": {
    "blob": "fd95734aac8ff9650c4beba0d74e2339ae49b40b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 911,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variante22983988630c74ed8ccee6ab416bd17e8f6e37f823758bc7dcce743c3a0ee07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecf825c9a9a262d9ad8a96ddd12b29ec9932970cc11878535914ad204310330f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variante22983988630c74ed8ccee6ab416bd17e8f6e37f823758bc7dcce743c3a0ee07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc197c66-6f81-b801-cde4-623656bd1dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 911–916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_stoppedProcess_of_mem_finset (hτ : IsStoppingTime ℱ τ)
    (hu : ∀ n, Integrable (u n) μ) (n : ι) {s : Finset ι} (hbdd : ∀ ω, τ ω < n → τ ω ∈ s) :
    Integrable (stoppedProcess u τ n) μ := by
  simp_rw [← memLp_one_iff_integrable] at hu ⊢
  exact memLp_stoppedProcess_of_mem_finset hτ hu n hbdd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variante22983988630c74ed8ccee6ab416bd17e8f6e37f823758bc7dcce743c3a0ee07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variante22983988630c74ed8ccee6ab416bd17e8f6e37f823758bc7dcce743c3a0ee07.lean#L911).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd95734aac8ff9650c4beba0d74e2339ae49b40b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
