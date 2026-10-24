# admissible_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78ae64c5c4a2b42c48984696cf6bdf4581fe50a8205645724349db3b8ee41678",
  "kind": "def",
  "lexical_name": "admissible_bound",
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
  "slug": "admissible-bound--c92ee3915c646c50e109f43f",
  "source": {
    "blob": "549aa56f19e3854fd5e5ff6a42a7279dc7851dee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c92ee3915c646c50e109f43fa8f87ded1faa50223e0dd2107ee60690dc187f43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78ae64c5c4a2b42c48984696cf6bdf4581fe50a8205645724349db3b8ee41678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def admissible_bound (A B C R : ℝ) (x : ℝ) :=
  A * (log x / R) ^ B * exp (-C * (log x / R) ^ ((1 : ℝ) / (2 : ℝ)))

@[blueprint
  "classical-bound-psi"
  (title := "Definitions 1, 5, FKS2")
  (statement := /--
  We say that $E_\psi$ satisfies a \emph{classical bound}
  with parameters $A, B, C, R, x_0$ if for all
  $x \geq x_0$ we have
  \[ E_\psi(x) \leq A \left(\frac{\log x}{R}\right)^B
     \exp\left(-C \left(\frac{\log x}{R}\right)^{1/2}
     \right). \]
  We say that it obeys a \emph{numerical bound} with
  parameter $\varepsilon(x_0)$ if for all $x \geq x_0$
  we have
  \[ E_\psi(x) \leq \varepsilon(x_0). \]
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `549aa56f19e3854fd5e5ff6a42a7279dc7851dee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
