# theorem_2d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:153a7203-e2dc-8a48-6734-a6f9e8bd3487",
  "kind": "theorem",
  "lexical_name": "theorem_2d",
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
  "slug": "theorem-2d--c9511a1abfa2f06a95b2381c",
  "source": {
    "blob": "48d4d2cfb80e1c05e8d56aede28538b71e5d9aa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant36a065635fb2a0e979b71a66284b3ed24cdf4448e794fda757de2ac4325e73c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9511a1abfa2f06a95b2381c0d80aa819c4cb3bc5c0ae2c052bae4edd88bd175",
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

Occurrence: `result:153a7203-e2dc-8a48-6734-a6f9e8bd3487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_2d (x T : ℝ) (hRH : riemannZeta.RH_up_to T)
  (hT : 4.92 * sqrt (x / log x) ≤ T) (hx : x > 2657) :
  |pi x - li x| ≤ (sqrt x) * log x / (8 * π) := by sorry

end Buthe2

namespace Buthe

blueprint_comment /--
Some results from \cite{Buthe}-/

@[blueprint
  "thm:buthe-a"
  (title := "Buthe Theorem a")
  (statement := /-- We have $|\psi(x) - x| \leq 0.94\sqrt{x}$ when $11 < x \leq 10^{19}$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant36a065635fb2a0e979b71a66284b3ed24cdf4448e794fda757de2ac4325e73c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant36a065635fb2a0e979b71a66284b3ed24cdf4448e794fda757de2ac4325e73c2.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48d4d2cfb80e1c05e8d56aede28538b71e5d9aa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
