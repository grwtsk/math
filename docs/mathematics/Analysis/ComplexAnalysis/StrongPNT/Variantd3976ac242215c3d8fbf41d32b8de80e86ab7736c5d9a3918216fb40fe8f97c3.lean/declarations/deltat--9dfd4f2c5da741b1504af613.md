# DeltaT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36f727252b85d2c090ff2515ecbc1481ebf52979fb28dc86faa02b89a45eeee9",
  "kind": "def",
  "lexical_name": "DeltaT",
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
  "slug": "deltat--9dfd4f2c5da741b1504af613",
  "source": {
    "blob": "4174ed82a0b4c9ac6a8ada5434aab619353c11ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1531,
    "line": 1507,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dfd4f2c5da741b1504af613fb22aedce34c9c6de99f6f82007fcd663126a0f7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36f727252b85d2c090ff2515ecbc1481ebf52979fb28dc86faa02b89a45eeee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1507–1531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def DeltaT (t : ℝ) : ℝ := E / log |t|



@[blueprint
  (title := "DeltaRange")
  (statement := /--
    For all $t\in\mathbb{R}$ with $|t|\geq 2$ we have that $$\delta_t<1/14.$$
  -/)
  (proof := /--
    Note that $\delta_t=E/\log|t|$ where $E$ is the implied constant from
    Lemma \ref{ZeroInequality}. But we know that $E=(14D)^{-1}$ where $D\geq 3A/\log 2+4B+C$
    where $A$, $B$, and $C$ are the constants coming from
    Lemmas \ref{ShiftZeroBound}, \ref{ShiftOneBound}, and \ref{ShiftTwoBound} respectively. Thus,
    $$E\leq\frac{1}{14\,(3A/\log 2+4B+C)}.$$
    But note that $A\geq 0$ and $B\geq 0$ by Lemmas \ref{ShiftZeroBound} and \ref{ShiftOneBound}
    respectively. However, we have that
    $$C\geq 2+\frac{2\log((13\,\zeta(3/2))/(3\,\zeta(3)))}{\log 2}$$
    by Theorem \ref{LogDerivZetaFinalBound} with Lemmas \ref{SumBoundI} and \ref{ShiftTwoBound}.
    So, by a very lazy estimate we have $C\geq 2$ and $E\leq 1/28$. Thus,
    $$\delta_t=\frac{E}{\log|t|}\leq\frac{1}{28\,\log2}<\frac{1}{14}.$$
  -/)
  (proofUses := ["LogDerivZetaFinalBound", "SumBoundI", "ShiftTwoBound", "ZeroInequality",
    "ShiftOneBound", "ShiftZeroBound"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean#L1507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4174ed82a0b4c9ac6a8ada5434aab619353c11ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
