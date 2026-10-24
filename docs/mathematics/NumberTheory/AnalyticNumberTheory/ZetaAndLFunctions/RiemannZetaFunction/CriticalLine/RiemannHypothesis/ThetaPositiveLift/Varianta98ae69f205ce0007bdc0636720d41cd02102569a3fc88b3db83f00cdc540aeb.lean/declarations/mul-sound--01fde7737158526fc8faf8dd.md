# mul_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c0be4f7c53f508292733c2af7ddf883f284e3f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a352e27-1fed-db06-5ac2-14a79cca7766",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9a320d0-b582-0739-b6ba-2a82f2c90452",
  "kind": "theorem",
  "lexical_name": "mul_sound",
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
  "slug": "mul-sound--01fde7737158526fc8faf8dd",
  "source": {
    "blob": "5c0be4f7c53f508292733c2af7ddf883f284e3f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01fde7737158526fc8faf8dd303e3c71e7a2e4b1f52a2b47ea21137dfd513e9f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9a320d0-b582-0739-b6ba-2a82f2c90452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_sound {a b : I} {x y : ℝ}
    (hx : Contains a x) (hy : Contains b y) : Contains (mul a b) (x * y) := by
  dsimp [Contains, mul] at *
  push_cast
  have ha : (0 : ℝ) ≤ a.r := (abs_nonneg _).trans hx
  have hb : (0 : ℝ) ≤ b.r := (abs_nonneg _).trans hy
  calc
    |x * y - a.c * b.c| =
        |(a.c : ℝ) * (y - b.c) + (b.c : ℝ) * (x - a.c) +
          (x - a.c) * (y - b.c)| := by congr 1; ring
    _ ≤ |(a.c : ℝ) * (y - b.c)| + |(b.c : ℝ) * (x - a.c)| +
          |(x - a.c) * (y - b.c)| :=
      (abs_add_le _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ = |(a.c : ℝ)| * |y - b.c| + |(b.c : ℝ)| * |x - a.c| +
          |x - a.c| * |y - b.c| := by simp only [abs_mul]
    _ ≤ |(a.c : ℝ)| * b.r + |(b.c : ℝ)| * a.r + a.r * b.r := by
      exact add_le_add
        (add_le_add (mul_le_mul_of_nonneg_left hy (abs_nonneg _))
          (mul_le_mul_of_nonneg_left hx (abs_nonneg _)))
        (mul_le_mul hx hy (abs_nonneg _) ha)

/-- Recursive interval sum over a finite family, starting from the exact zero enclosure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0be4f7c53f508292733c2af7ddf883f284e3f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
