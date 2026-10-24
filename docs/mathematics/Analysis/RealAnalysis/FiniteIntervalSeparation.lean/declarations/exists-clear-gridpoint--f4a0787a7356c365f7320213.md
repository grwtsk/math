# exists_clear_gridPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ec86be8-5453-a775-e3df-cf00fa515250",
  "kind": "theorem",
  "lexical_name": "exists_clear_gridPoint",
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
  "slug": "exists-clear-gridpoint--f4a0787a7356c365f7320213",
  "source": {
    "blob": "4a6389ec7a7d6fb4b501e59d9b885c15843cca6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/Analysis/Real/FiniteIntervalSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4a0787a7356c365f73202136e972bf25de7ba83a20491ec0ce68724b0151187",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ec86be8-5453-a775-e3df-cf00fa515250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_clear_gridPoint {ι : Type*} [Fintype ι] (a : ℝ) (v : ι → ℝ) :
    ∃ j : Fin (Fintype.card ι + 1),
      ∀ i : ι, clearance (Fintype.card ι) ≤ |gridPoint a (Fintype.card ι) j - v i| := by
  classical
  by_contra h
  push Not at h
  choose blocker hblocker using h
  have hinj : Function.Injective blocker := by
    intro i j hij
    apply close_gridPoint_unique a (v (blocker i)) (Fintype.card ι) i j (hblocker i)
    simpa only [hij] using hblocker j
  have hc := Fintype.card_le_of_injective blocker hinj
  simp only [Fintype.card_fin] at hc
  omega

/-- Finite records need not have distinct values; no source record is erased. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/FiniteIntervalSeparation.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6389ec7a7d6fb4b501e59d9b885c15843cca6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
