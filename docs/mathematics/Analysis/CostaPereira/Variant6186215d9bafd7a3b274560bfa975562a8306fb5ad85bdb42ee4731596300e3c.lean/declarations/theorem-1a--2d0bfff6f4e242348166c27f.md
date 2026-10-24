# theorem_1a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:295914bd-4b56-ca41-4cff-f19d8450d2f5",
  "kind": "theorem",
  "lexical_name": "theorem_1a",
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
  "slug": "theorem-1a--2d0bfff6f4e242348166c27f",
  "source": {
    "blob": "db0b0a618f107a58f1285f605631a4cf012a1ab6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 670,
    "path": "GRWTSK/Analysis/CostaPereira/Variant6186215d9bafd7a3b274560bfa975562a8306fb5ad85bdb42ee4731596300e3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d0bfff6f4e242348166c27fd385688ac43611ee33df15675fb4b34b6573bb62",
  "verification": {
    "reference": "docs/verification/Analysis/CostaPereira/Variant6186215d9bafd7a3b274560bfa975562a8306fb5ad85bdb42ee4731596300e3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:295914bd-4b56-ca41-4cff-f19d8450d2f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_1a {x : ℝ} (hx : 0 < x) :
    ψ x - θ x ≤ ψ (x ^ (1 / 2 : ℝ)) + ψ (x ^ (1 / 3 : ℝ)) + ψ (x ^ (1 / 5 : ℝ)) :=
  sublemma_1_2 hx 5 ▸ sublemma_1_7 hx

@[blueprint
  "costa-pereira-theorem-1b"
  (title := "Costa-Pereira Theorem 1b")
  (statement :=
    /-- For every $x > 0$ we have
    $\psi(x) - \theta(x) \geqslant \psi(x^{1/2})
      + \psi(x^{1/3}) + \psi(x^{1/7})$. -/)
  (proof :=
    /-- Follows from Sublemma
    \ref{costa-pereira-sublemma-1-8} and
    Sublemma \ref{costa-pereira-sublemma-1-2}. -/)
  (latexEnv := "theorem")
  (discussion := 685)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CostaPereira/Variant6186215d9bafd7a3b274560bfa975562a8306fb5ad85bdb42ee4731596300e3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CostaPereira/Variant6186215d9bafd7a3b274560bfa975562a8306fb5ad85bdb42ee4731596300e3c.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db0b0a618f107a58f1285f605631a4cf012a1ab6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
