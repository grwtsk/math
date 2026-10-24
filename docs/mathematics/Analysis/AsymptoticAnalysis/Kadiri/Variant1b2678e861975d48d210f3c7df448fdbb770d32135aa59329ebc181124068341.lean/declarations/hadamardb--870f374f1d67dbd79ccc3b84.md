# hadamardB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d9615e28661e65d1e6fa4779ba3d874aa7dd7ebea3cd81353b19a0d1030c6b7",
  "kind": "def",
  "lexical_name": "hadamardB",
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
  "slug": "hadamardb--870f374f1d67dbd79ccc3b84",
  "source": {
    "blob": "caefc881fdabcfb3983ca23715e9283f54ac4f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:870f374f1d67dbd79ccc3b8446dd917fec0076dc3a9d4fa7ad7995043511d231",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d9615e28661e65d1e6fa4779ba3d874aa7dd7ebea3cd81353b19a0d1030c6b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def hadamardB : ℂ := sorry

@[blueprint
  "kadiri-hadamard-identity"
  (title := "Hadamard expansion of $-\\zeta'/\\zeta$")
  (statement := /-- For every $s \in \mathbb{C}$ that is neither $1$ nor a non-trivial zero
  of $\zeta$,
  $$ -\frac{\zeta'}{\zeta}(s) = -B - \tfrac{1}{2} \log \pi + \frac{1}{s - 1}
       + \tfrac{1}{2} \frac{\Gamma'}{\Gamma}\!\left(\tfrac{s}{2} + 1\right)
       - \sum_{\rho \in Z(\zeta)} \left(\frac{1}{\rho} + \frac{1}{s - \rho}\right), $$
  where $B$ is the Hadamard constant (\ref{kadiri-hadamard-B}). This is the logarithmic
  derivative of the Hadamard factorisation of $\zeta$
  (\cite[Chapter 12]{Davenport2000}). -/)
  (proof := /-- Differentiate the Hadamard product (\ref{kadiri-hadamard-B}) logarithmically;
  the linear-in-$s$ term in the exponential collapses to the constant $B$. The
  $\tfrac{1}{s-1}$ term comes from the $(s-1)\zeta(s)$ prefactor and the
  $\tfrac{1}{2} \Gamma'/\Gamma$ term from the gamma factor. To be formalised. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caefc881fdabcfb3983ca23715e9283f54ac4f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
