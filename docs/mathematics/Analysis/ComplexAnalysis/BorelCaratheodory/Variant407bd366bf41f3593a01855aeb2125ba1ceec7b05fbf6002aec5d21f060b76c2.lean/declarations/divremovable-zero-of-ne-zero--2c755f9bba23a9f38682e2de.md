# divRemovable_zero_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f5e57a1c03525694803e7881814cee6d3b608a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f6ce857-523e-d1fd-74f0-7b517a89e7b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d41fd4b-a795-dd02-6577-6a909f3d07f6",
  "kind": "lemma",
  "lexical_name": "divRemovable_zero_of_ne_zero",
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
  "slug": "divremovable-zero-of-ne-zero--2c755f9bba23a9f38682e2de",
  "source": {
    "blob": "4f5e57a1c03525694803e7881814cee6d3b608a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 36,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c755f9bba23a9f38682e2def281b607abbdadf1852e4c854e78fda582a8433b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d41fd4b-a795-dd02-6577-6a909f3d07f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma divRemovable_zero_of_ne_zero {z : ℂ} (f : ℂ → ℂ)
    (z_ne_0 : z ≠ 0) :
    divRemovable_zero f z = f z / z := by
  apply Function.update_of_ne z_ne_0

@[blueprint "AnalyticOn_divRemovable_zero"
  (title := "AnalyticOn-divRemovable-zero")
  (statement := /--
    Let $f$ be a complex function analytic on an open set $s$
    containing $0$ such that $f(0)=0$.
    Then, with $g$ defined as in
    Definition~\ref{divRemovable_zero}, $g$ is analytic on $s$.
  -/)
  (proof := /--
    We need to show that $g$ is complex differentiable at every
    point in $s$. For $z\neq 0$, this follows directly from the
    definition of $g$ and the fact that $f$ is analytic on $s$.
    For $z=0$, we use the definition of the derivative and the
    fact that $f(0)=0$:
    \[
    \lim_{z\to 0}\frac{g(z)-g(0)}{z-0}
    =\lim_{z\to 0}\frac{\frac{f(z)}{z}-f'(0)}{z}
    =\lim_{z\to 0}\frac{f(z)-f'(0)z}{z^2}
    =\lim_{z\to 0}\frac{f(z)-f(0)-f'(0)(z-0)}{(z-0)^2}=0,
    \]
    where the last equality follows from the definition of the
    derivative of $f$ at $0$. Thus, $g$ is complex differentiable
    at $0$ with derivative $0$, completing the proof.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f5e57a1c03525694803e7881814cee6d3b608a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
