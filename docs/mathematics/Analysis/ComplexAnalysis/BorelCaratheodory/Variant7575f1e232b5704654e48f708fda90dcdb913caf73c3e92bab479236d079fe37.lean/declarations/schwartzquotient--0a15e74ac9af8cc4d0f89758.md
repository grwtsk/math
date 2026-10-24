# schwartzQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8243c0d412bf1d684aa7a13824a8a49d57c16c21616352e9284539550516662",
  "kind": "abbrev",
  "lexical_name": "schwartzQuotient",
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
  "slug": "schwartzquotient--0a15e74ac9af8cc4d0f89758",
  "source": {
    "blob": "af5af9c63f28c935725a77402f969c98766e02e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 212,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a15e74ac9af8cc4d0f8975823104042f95a514d9160971b4bc05b9083c633eb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8243c0d412bf1d684aa7a13824a8a49d57c16c21616352e9284539550516662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev schwartzQuotient (f : ℂ → ℂ) (M : ℝ) :
    ℂ → ℂ :=
  fun z ↦ divRemovable_zero f z / (2 * M - f z)

@[blueprint "AnalyticOn.schwartzQuotient"
  (title := "AnalyticOn.schwartzQuotient")
  (statement := /--
    Let $M>0$. Let $f$ be analytic on the closed ball $|z|\leq R$
    such that $f(0)=0$ and suppose that $2M - f(z)\neq 0$ for all
    $|z|\leq R$. Then, with $f_{M}$ defined as in
    Definition~\ref{schwartzQuotient}, $f_{M}$ is analytic on
    $|z|\leq R$.
  -/)
  (proof := /--
    This follows directly from
    Lemma~\ref{AnalyticOn_divRemovable_zero_closedBall} and the
    fact that the difference of two analytic functions is analytic.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5af9c63f28c935725a77402f969c98766e02e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
