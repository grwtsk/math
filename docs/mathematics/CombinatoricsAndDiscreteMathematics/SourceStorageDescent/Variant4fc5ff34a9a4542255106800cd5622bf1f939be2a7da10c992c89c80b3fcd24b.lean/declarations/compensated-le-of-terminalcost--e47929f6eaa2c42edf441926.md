# compensated_le_of_terminalCost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6b5cfe8-45ef-6f45-27c1-cb63ded0e722",
  "kind": "theorem",
  "lexical_name": "compensated_le_of_terminalCost",
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
  "slug": "compensated-le-of-terminalcost--e47929f6eaa2c42edf441926",
  "source": {
    "blob": "f90b39b5be37527e38eb4be69fe78258b705c1bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variant4fc5ff34a9a4542255106800cd5622bf1f939be2a7da10c992c89c80b3fcd24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e47929f6eaa2c42edf4419260b9ac041a0736c87c8b3d42f2809ed9d6a6b8946",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variant4fc5ff34a9a4542255106800cd5622bf1f939be2a7da10c992c89c80b3fcd24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b5cfe8-45ef-6f45-27c1-cb63ded0e722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensated_le_of_terminalCost (R A B : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A)
    (hT : terminalCost A ≤ B) : compensatedSourceSum A ≤ B + 2 + 10 / R := by
  have hA := hR.trans hRA
  have hd := (abs_le.mp (quadratureError_abs_le A hA)).1
  have hi : 10 / A ≤ 10 / R :=
    div_le_div_of_nonneg_left (by norm_num) (by linarith) hRA
  rw [terminalCost_eq_compensated A hA] at hT
  linarith only [hT, hd, hi]

/-- The exact consumer prices the complete terminal cost once, without an extra impulse loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variant4fc5ff34a9a4542255106800cd5622bf1f939be2a7da10c992c89c80b3fcd24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variant4fc5ff34a9a4542255106800cd5622bf1f939be2a7da10c992c89c80b3fcd24b.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f90b39b5be37527e38eb4be69fe78258b705c1bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
