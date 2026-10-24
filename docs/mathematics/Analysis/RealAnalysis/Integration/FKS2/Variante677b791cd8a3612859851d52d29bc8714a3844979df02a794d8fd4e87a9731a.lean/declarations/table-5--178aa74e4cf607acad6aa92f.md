# Table_5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81ae84fe9e3dbd3038bce64e293793adb2f3f0126773168f2d41f8dc76e5d54d",
  "kind": "def",
  "lexical_name": "Table_5",
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
  "slug": "table-5--178aa74e4cf607acad6aa92f",
  "source": {
    "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4063,
    "line": 4020,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:178aa74e4cf607acad6aa92f305d588cf89c768b6991f5dd6d014f6ecb8c2753",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81ae84fe9e3dbd3038bce64e293793adb2f3f0126773168f2d41f8dc76e5d54d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4020–4063.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Table_5 : List (ℝ × ℝ × ℝ) := [
  (100, 1.9202, 2.0495e-12),
  (1000, 6.6533e-7, 1.5938e-12),
  (2000, 2.8341e-11, 1.5707e-12),
  (3000, 1.0385e-14, 4.9711e-15),
  (4000, 1.2145e-17, 1.1026e-17),
  (5000, 3.0305e-20, 2.9954e-20),
  (6000, 1.3052e-22, 1.2980e-22),
  (7000, 8.5363e-25, 8.5185e-25),
  (8000, 7.7910e-27, 7.7871e-27),
  (9000, 9.3522e-29, 9.2236e-29),
  (10000, 1.4137e-30, 1.3683e-30),
  (11000, 2.6036e-32, 2.4758e-32),
  (12000, 5.6934e-34, 5.3287e-34),
  (13000, 1.4481e-35, 1.3361e-35),
  (14000, 4.2127e-37, 3.8368e-37),
  (15000, 1.3824e-38, 1.2443e-38),
  (16000, 5.0581e-40, 4.5033e-40),
  (17000, 2.0432e-41, 1.8009e-41),
  (18000, 9.0354e-43, 7.8897e-43),
  (19000, 4.3424e-44, 3.7589e-44),
  (20000, 2.2536e-45, 1.9349e-45)
]

@[blueprint
  "fks2-corollary-22"
  (title := "FKS2 Corollary 22")
  (statement := /--
  One has
  \[
  |\pi(x) - \mathrm{Li}(x)| \leq 9.2211 x \sqrt{\log x} \exp(-0.8476 \sqrt{\log x})
  \]
  for all $x \geq 2$.
  -/)
  (proof := /-- We fix $R = 1$, $x_0 = 2$, $x_1 = e^{100}$, $A_\theta = 9.2211$, $B = 1.5$ and $C = 0.8476$. By Corollary \ref{fks2-corollary-14}, these are admissible for all $x \geq 2$, so we can apply Theorem \ref{fks2-theorem-3} and calculate that
  \begin{equation}
  \mu_{asymp}(40.78\ldots, e^{20000}) \leq 5.01516 \cdot 10^{-5}.
  \end{equation}
  This implies that $A_\pi = 121.103$ is admissible for all $x \geq e^{20000}$.

  As in the proof of \cite[Lemmas 5.2 and 5.3]{FKS} one may verify that the numerical results obtainable from Theorem \ref{fks2-theorem-6}, using Corollary \ref{fks2-corollary-8}, may be interpolated as a step function to give a bound on $E_\pi(x)$ of the shape $\varepsilon_{\pi,asymp}(x)$. In this way we obtain that $A_\pi = 121.107$ is admissible for $x > 2$. Note that the subdivisions we use are essentially the same as used in \cite[Lemmas 5.2 and 5.3]{FKS}. In Table 5 we give a sampling of the relevant values, more of the values of $\varepsilon_{\pi,num}(x_1)$ can be found in Table 4. Far more detailed versions of these tables will be posted online in https://arxiv.org/src/2206.12557v1/anc/PrimeCountingTables.pdf.
  -/)
  (latexEnv := "corollary")
  (discussion := 721)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean#L4020).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
