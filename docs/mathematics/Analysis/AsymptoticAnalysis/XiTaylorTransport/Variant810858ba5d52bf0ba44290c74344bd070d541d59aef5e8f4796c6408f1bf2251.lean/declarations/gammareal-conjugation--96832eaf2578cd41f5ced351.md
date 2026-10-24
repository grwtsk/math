# gammaReal_conjugation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d148863e4a71c038d3409ed384ceb331c875c1b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02abfbf3-d1a7-3cc5-b795-220d101ab5fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a15a438-5a6b-8d58-cb9f-3697c083af07",
  "kind": "theorem",
  "lexical_name": "gammaReal_conjugation",
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
  "slug": "gammareal-conjugation--96832eaf2578cd41f5ced351",
  "source": {
    "blob": "d148863e4a71c038d3409ed384ceb331c875c1b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96832eaf2578cd41f5ced351633d315b312e187d89f02b873633eef71558d7e5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a15a438-5a6b-8d58-cb9f-3697c083af07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaReal_conjugation (s : ℂ) : Gammaℝ (conj s) = conj (Gammaℝ s) := by
  have hp : (Real.pi : ℂ).arg ≠ Real.pi := by
    simpa [arg_ofReal_of_nonneg Real.pi_pos.le] using Real.pi_ne_zero.symm
  have hc := cpow_conj (Real.pi : ℂ) (-s / 2) hp
  have hpow : (Real.pi : ℂ) ^ (-conj s / 2) =
      conj ((Real.pi : ℂ) ^ (-s / 2)) := by
    simpa using hc
  rw [Gammaℝ_def, Gammaℝ_def, map_mul, hpow]
  congr 1
  simpa using Gamma_conj (s / 2)

/-- Recover the familiar product on an open half-plane using a nonzero gamma factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d148863e4a71c038d3409ed384ceb331c875c1b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
