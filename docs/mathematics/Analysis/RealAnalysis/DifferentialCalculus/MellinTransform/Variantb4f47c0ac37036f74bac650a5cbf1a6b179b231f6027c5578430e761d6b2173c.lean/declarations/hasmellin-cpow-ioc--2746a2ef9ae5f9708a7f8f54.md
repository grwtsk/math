# hasMellin_cpow_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:683eab70-3d07-5b24-74d7-fa1384efa03c",
  "kind": "theorem",
  "lexical_name": "hasMellin_cpow_Ioc",
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
  "slug": "hasmellin-cpow-ioc--2746a2ef9ae5f9708a7f8f54",
  "source": {
    "blob": "25b9ec15830990f700c9e5dd190ee90ccf39262c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 489,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2746a2ef9ae5f9708a7f8f5420d99b1be0f794b5a22ad60bf1f518b85fd056fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:683eab70-3d07-5b24-74d7-fa1384efa03c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasMellin_cpow_Ioc (a : ℂ) {s : ℂ} (hs : 0 < re s + re a) :
    HasMellin (indicator (Ioc 0 1) (fun t => ↑t ^ a : ℝ → ℂ)) s (1 / (s + a)) := by
  have := hasMellin_one_Ioc (by rwa [add_re] : 0 < (s + a).re)
  simp_rw [HasMellin, ← MellinConvergent.cpow_smul, ← mellin_cpow_smul, ← indicator_smul,
    smul_eq_mul, mul_one] at this
  exact this
#align has_mellin_cpow_Ioc hasMellin_cpow_Ioc

end MellinIoc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b9ec15830990f700c9e5dd190ee90ccf39262c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
