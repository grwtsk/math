# prod_epsilon_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9ffb9b0-98a2-5b77-cdc5-881d89af002f",
  "kind": "theorem",
  "lexical_name": "prod_epsilon_le",
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
  "slug": "prod-epsilon-le--5a57eddfc22897fe40a1be41",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1552,
    "line": 1518,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a57eddfc22897fe40a1be418c37e4505fdda2fe40968cbc144a2c5df04e6d3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9ffb9b0-98a2-5b77-cdc5-881d89af002f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1518–1552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_epsilon_le {ε : ℝ} (hε : 0 ≤ ε ∧ ε ≤ 1 / (89693 ^ 2 : ℝ)) :
    ∏ i : Fin 3, (1 + (1.000675 : ℝ) ^ ((i : ℕ) + 1 : ℝ) * ε) ≤
      1 + 3.01 * ε + 3.01 * ε ^ 2 + 1.01 * ε ^ 3 := by
  norm_cast; norm_num [Fin.prod_univ_three]; nlinarith

@[blueprint
  "lem:poly-ineq"
  (title := "Polynomial approximation of the inequality")
  (statement := /--
  For \(0 \le \varepsilon \le 1/89693^2\), we have
  \[
    \prod_{i=1}^3 (1 + 1.000675^i \varepsilon)
    \le
    \Bigl(1 + 3.01\varepsilon + 3.01\varepsilon^2 + 1.01\varepsilon^3\Bigr),
  \]
  and
  \[
    \prod_{i=1}^3 \Bigl(1 + \frac{\varepsilon}{1.000675^{2i} (1 + \frac{1}{89693})}\Bigr)
    \Bigl(1 + \frac{3}{8}\varepsilon\Bigr)
    \Bigl(1 - \frac{4 \times 1.000675^{12}}{89693}\varepsilon\Bigr)
    \ge
    1 + 3.36683\varepsilon - 0.01\varepsilon^2.
  \]
  -/)
  (proof := /--
  Expand each finite product as a polynomial in \(\varepsilon\), estimate the coefficients using
  the bounds in Lemma~\ref{lem:eps-bounds}, and bound the tails by simple inequalities such as
  \[
    (1+C\varepsilon)^k \le 1 + k C\varepsilon + \dots
  \]
  for small \(\varepsilon\).
  All coefficients can be bounded numerically in a rigorous way; this step is a finite computation
  that can be checked mechanically.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L1518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
