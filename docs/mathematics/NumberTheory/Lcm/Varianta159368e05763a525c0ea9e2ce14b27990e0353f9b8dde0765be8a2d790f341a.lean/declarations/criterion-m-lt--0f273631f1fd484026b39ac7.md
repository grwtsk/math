# Criterion.M_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f7d864b-c9fb-56e8-803f-ad2669552435",
  "kind": "theorem",
  "lexical_name": "Criterion.M_lt",
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
  "slug": "criterion-m-lt--0f273631f1fd484026b39ac7",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 550,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f273631f1fd484026b39ac7bc7a402842e7bcfcab412dc6a6854b43879f0a18",
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

Occurrence: `result:0f7d864b-c9fb-56e8-803f-ad2669552435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Criterion.M_lt (c : Criterion) : c.M < L c.n := by
  calc c.M < ((4 * ∏ i, c.p i) * c.m + c.r) * c.L' :=
        mul_lt_mul_of_pos_right (Nat.lt_add_of_pos_right c.r_ge) c.L'_pos
    _ = (∏ i, c.q i) * c.L' := by rw [← c.prod_q_eq]
    _ = L c.n := c.L_eq_prod_q_mul_L'.symm

@[blueprint
  "lem:M-basic"
  (title := "Basic properties of \\(M\\)")
  (statement := /--
  With notation as above, we have:
  \begin{enumerate}
    \item \(M < L_n\).
    \item
    \[
      1 < \frac{L_n}{M} = \Bigl(1 - \frac{r}{q_1 q_2 q_3}\Bigr)^{-1}
        < \Bigl(1 - \frac{4 p_1 p_2 p_3}{q_1 q_2 q_3}\Bigr)^{-1}.
    \]
  \end{enumerate}
  -/)
  (proof := /--
  The first item is by construction of the division algorithm.
  For the second, note that
  \[
    L_n = q_1 q_2 q_3 L' = (4 p_1 p_2 p_3 m + r) L' > 4 p_1 p_2 p_3 m L' = M,
  \]
  since \(r>0\). For the third,
  \[
    \frac{L_n}{M} = \frac{4 p_1 p_2 p_3 m + r}{4 p_1 p_2 p_3 m}
                = 1 + \frac{r}{4 p_1 p_2 p_3 m}
                = \Bigl(1 - \frac{r}{4 p_1 p_2 p_3 m + r}\Bigr)^{-1}
                = \Bigl(1 - \frac{r}{q_1 q_2 q_3}\Bigr)^{-1}.
  \]
  Since \(0 < r < 4p_1p_2p_3\) and \(4p_1p_2p_3 < q_1q_2q_3\), we have
  \[
    0<\frac{r}{q_1 q_2 q_3}<\frac{4p_1p_2p_3}{q_1 q_2 q_3},
  \]
  so
  \[
    \Bigl(1-\frac{r}{q_1 q_2 q_3}\Bigr)^{-1}
    < \Bigl(1-\frac{4p_1p_2p_3}{q_1 q_2 q_3}\Bigr)^{-1}.
  \]
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
