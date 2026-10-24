# ConjSymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18936b1ff0ceae7dc800cf534fefe976f2743c1a30b2573de1354f637a278e44",
  "kind": "def",
  "lexical_name": "ConjSymm",
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
  "slug": "conjsymm--b9a65cef22420c2d2bc453b1",
  "source": {
    "blob": "39e6e6fe603b42bd8f7af06c3bdf9e43a667fe84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 841,
    "line": 818,
    "path": "GRWTSK/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9a65cef22420c2d2bc453b1778f02c7b14aa23611150e1be4ab9fcf47fc8276",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18936b1ff0ceae7dc800cf534fefe976f2743c1a30b2573de1354f637a278e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 818–841.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConjSymm (F : ℂ → ℂ) : Prop := ∀ s : ℂ, F (starRingEnd ℂ s) = starRingEnd ℂ (F s)

section Proposition52

/- Shared context for Proposition 5.2 and its sub-lemmas: the ladder parameters `l`, the
meromorphic function `F`, the parameter `λ` (`lam`) and sign `ε`, and the reals `x₀ ≤ x`. The
structural (`Prop`) hypotheses stay explicit on each lemma. -/
variable {l : LadderParams} {F : ℂ → ℂ} {lam ε x₀ x : ℝ}

@[blueprint
  "ch2-prop-5-2-a"
  (title := "Proposition 5.2: reduction to Lemma 5.1")
  (statement := /--
  Under the hypotheses of \ref{ch2-prop-5-2}, with $G$, $G^\circ$, $G^\star$, $z(s)$ as there, the
  decomposition $G = G^\circ + \mathrm{sgn}(\Im s)\, G^\star$ holds (as $\mathrm{sgn}(\Re z(s)) =
  \mathrm{sgn}(\Im s)$, since $\Re z(s) = \Im s / T$ and $T > 0$), $G^\star$ is
  conjugation-antisymmetric, and the boundedness hypotheses of Lemma \ref{ch2-lemma-5-1} hold;
  hence Lemma \ref{ch2-lemma-5-1} gives
  $$ \frac{1}{2\pi i}\int_{1-iT}^{1+iT} G(s) x^s\, ds = \frac{1}{2\pi i}\int_{C_\infty} G(s) x^s\, ds + \frac{1}{\pi}\Im\int_C G^\star(s) x^s\, ds + \sum_{\rho \in R \setminus R_C}\mathrm{Res}_{s=\rho} G(s) x^s + \sum_{\rho \in R_C}\mathrm{Res}_{s=\rho} G^\circ(s) x^s. $$ -/)
  (proof := /-- Apply Lemma \ref{ch2-lemma-5-1}. The $G^\star$ reflection is the conjugation
  symmetry of $\Phi^\star$ together with $F(\bar s) = \overline{F(s)}$; boundedness follows from
  $\Phi^\circ$ bounded and $\Phi^\star = O(|z|)$ (CH2 Lemma 4.3). -/)
  (latexEnv := "sublemma")
  (discussion := 1457)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean#L818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e6e6fe603b42bd8f7af06c3bdf9e43a667fe84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
