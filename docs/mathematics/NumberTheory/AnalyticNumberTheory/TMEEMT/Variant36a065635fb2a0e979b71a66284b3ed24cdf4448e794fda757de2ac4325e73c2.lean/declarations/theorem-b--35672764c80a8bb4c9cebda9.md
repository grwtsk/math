# theorem_b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd297956-3a5e-c01a-948a-bcebd4f3c572",
  "kind": "theorem",
  "lexical_name": "theorem_b",
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
  "slug": "theorem-b--35672764c80a8bb4c9cebda9",
  "source": {
    "blob": "48d4d2cfb80e1c05e8d56aede28538b71e5d9aa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 718,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant36a065635fb2a0e979b71a66284b3ed24cdf4448e794fda757de2ac4325e73c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35672764c80a8bb4c9cebda935ef849a651d13d1e38eb3e4b038ac7091400162",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant36a065635fb2a0e979b71a66284b3ed24cdf4448e794fda757de2ac4325e73c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd297956-3a5e-c01a-948a-bcebd4f3c572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_b (x : ℝ) (hx : x ≥ 110117910) :
    pi_r 1 x - (x ^ 2 / (2 * log x) + x ^ 2 / (4 * (log x) ^ 2) +
        x ^ 2 / (4 * (log x) ^ 3)) ≤
      107 * x ^ 2 / (160 * (log x) ^ 4) := by sorry

@[blueprint
  "thm:dn-pi2-lower"
  (title := "Del\\'eglise-Nicolas 2019, $\\pi_2$ lower bound")
  (statement := /-- For $x \geq 1{,}091{,}239$,
  $-\frac{1069\, x^3}{648\log^4 x} \leq \pi_2(x) - \left(\frac{x^3}{3\log x} + \frac{x^3}{9\log^2 x} + \frac{x^3}{27\log^3 x}\right)$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant36a065635fb2a0e979b71a66284b3ed24cdf4448e794fda757de2ac4325e73c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant36a065635fb2a0e979b71a66284b3ed24cdf4448e794fda757de2ac4325e73c2.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48d4d2cfb80e1c05e8d56aede28538b71e5d9aa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
