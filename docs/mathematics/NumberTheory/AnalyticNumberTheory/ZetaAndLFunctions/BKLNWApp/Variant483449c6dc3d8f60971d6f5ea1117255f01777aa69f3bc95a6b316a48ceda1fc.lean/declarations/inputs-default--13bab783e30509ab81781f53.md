# Inputs.default

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c2ab813a7fa6d9b8eb8f732a5da8984c323a622dcad68e1f2022aeef87f1910",
  "kind": "def",
  "lexical_name": "Inputs.default",
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
  "slug": "inputs-default--13bab783e30509ab81781f53",
  "source": {
    "blob": "8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13bab783e30509ab81781f53838dc351424005333c1c05e09577be3bc81273e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c2ab813a7fa6d9b8eb8f732a5da8984c323a622dcad68e1f2022aeef87f1910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Inputs.default : Inputs where
  H := 2445999556030
  hH := GW_theorem
  R := 5.5666305  -- a slightly more conservative value of 5.573412 was used in the paper
  hR := MT_theorem_1
  ZDB := FKS.corollary_2_9_merged -- stronger than the Kadiri-Lumley-Ng input used here

@[blueprint
  "bklnw-eq_A_7"
  (title := "Equation (A.7)")
  (statement := /-- Let $x \geq e^{1000}$ and $T$ satisfies
  $50 < T \leq x$. Then
  $$ \frac{\psi(x) - x}{x} = \sum_{|\gamma| < T}
  \frac{x^{\rho - 1}}{\rho}
  + \mathcal{O}^*\left(\frac{2(\log x)^2}{T}\right) $$
  where $A = \mathcal{O}^*(B)$ means $|A| \leq B$. -/)
  (proof := /-- See \cite[Theorem 1.3]{Dudek}. -/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
