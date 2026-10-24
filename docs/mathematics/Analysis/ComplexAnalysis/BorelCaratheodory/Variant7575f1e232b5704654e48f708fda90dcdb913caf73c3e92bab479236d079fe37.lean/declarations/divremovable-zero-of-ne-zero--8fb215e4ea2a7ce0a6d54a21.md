# divRemovable_zero_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85b327d1-4940-afa1-28b9-656987c201ad",
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
  "slug": "divremovable-zero-of-ne-zero--8fb215e4ea2a7ce0a6d54a21",
  "source": {
    "blob": "af5af9c63f28c935725a77402f969c98766e02e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 44,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb215e4ea2a7ce0a6d54a21e68e96317474925e68edd150f794c8bf909fae8e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85b327d1-4940-afa1-28b9-656987c201ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–73.

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

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5af9c63f28c935725a77402f969c98766e02e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
