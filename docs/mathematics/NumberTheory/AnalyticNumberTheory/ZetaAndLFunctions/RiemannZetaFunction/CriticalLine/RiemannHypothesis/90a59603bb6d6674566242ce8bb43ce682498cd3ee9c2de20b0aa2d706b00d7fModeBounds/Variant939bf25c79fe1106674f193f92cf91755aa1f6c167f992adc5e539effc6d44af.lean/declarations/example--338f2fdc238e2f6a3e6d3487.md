# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39b562c58ab9a34b47a031bce803ee288016a831c9dfdae1a67758fd0d28f93d",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--338f2fdc238e2f6a3e6d3487",
  "source": {
    "blob": "9ebcb53055f28c511c80ded222c9ba92b74fd301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds/Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:338f2fdc238e2f6a3e6d348709d669179e567fd5d1bfd196e1a979538d063c11",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds/Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39b562c58ab9a34b47a031bce803ee288016a831c9dfdae1a67758fd0d28f93d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (y : ℝ) (hy : 3 ≤ y) : |9 + 12/(2*y-3)-4*y| ≤ 9*y := by
  have hd : 0 < 2*y-3 := by linarith
  have hdiv0 : 0 ≤ 12/(2*y-3) := by positivity
  have hdiv : 12/(2*y-3) ≤ 4 := (div_le_iff₀ hd).2 (by linarith)
  rw [abs_le]
  constructor <;> linarith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds/Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds/Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ebcb53055f28c511c80ded222c9ba92b74fd301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
