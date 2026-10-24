# Table_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b5eaab0d5ca2640c67de204eef700f61c260c3a52528c19b334f40eb5121805",
  "kind": "def",
  "lexical_name": "Table_1",
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
  "slug": "table-1--d95b4712db4cc6f558f9ade5",
  "source": {
    "blob": "44f6fadbac9f838b75004e411b239b6fe90ca38d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Varianta1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d95b4712db4cc6f558f9ade5f2d90cff3bd94ce25c7290156758987daac81900",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Varianta1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b5eaab0d5ca2640c67de204eef700f61c260c3a52528c19b334f40eb5121805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Table_1 : List (ℝ × ℝ × ℝ × ℝ × ℝ × ℝ) :=
 [ (1000, 0.98, 461.9, 1.52, 1.89, 1.20e-5),
   (2000, 0.98, 411.4, 1.52, 1.89, 8.35e-10),
   (3000, 0.98, 379.6, 1.52, 1.89, 4.51e-13),
   (4000, 0.98, 356.3, 1.52, 1.89, 7.33e-16),
   (5000, 0.99, 713.0, 1.51, 1.94, 9.77e-19),
   (6000, 0.99, 611.6, 1.51, 1.94, 4.23e-21),
   (7000, 0.99, 590.1, 1.51, 1.94, 3.09e-23),
   (8000, 0.99, 570.5, 1.51, 1.94, 3.12e-25),
   (9000, 0.99, 552.3, 1.51, 1.94, 4.11e-27),
   (10000,0.99,535.4 ,1.51 ,1.94 ,6.78e-29)]


@[blueprint "pt_thm_1"
  (title := "PT Theorem 1")
  (statement := /--
Let $R = 5.573412$. For each row $\{X, \sigma, A, B, C, \epsilon_0\}$ from \cite[Table 1]{PT2021}
we have
\begin{equation}\label{marcellina}
\left|\frac{\psi(x) - x}{x}\right| \leq A \left(\frac{\log x}{R}\right)^B
  \exp\left(-C\sqrt{\frac{\log x}{R}}\right)
\end{equation}
and
\begin{equation*}
\left|\psi(x)-x\right|\leq \epsilon_0 x
\end{equation*}
for all $\log x \geq X$.
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Varianta1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Varianta1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f6fadbac9f838b75004e411b239b6fe90ca38d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
