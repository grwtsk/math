# Inputs.c3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ac0645bb638cadd9ecb0d5f6817e2c90aa148a9a445348eb4ab2a024655f2b0",
  "kind": "def",
  "lexical_name": "Inputs.c3",
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
  "slug": "inputs-c3--6508baf615677c5bbba8afdb",
  "source": {
    "blob": "d23f277aa57f0df744f827aba10ffe84abca071f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 317,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6508baf615677c5bbba8afdb0b8b79475f476e76e5475f9c28d49a12a6f0a279",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ac0645bb638cadd9ecb0d5f6817e2c90aa148a9a445348eb4ab2a024655f2b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Inputs.c3 (I : Inputs)
    (σ x₀ : ℝ) : ℝ :=
  2 * exp (-2 * (log x₀ / I.R) ^ (1 / 2)) *
    (log x₀) ^ 2 * I.k σ x₀

@[blueprint
  "bklnw-eq_A_18"
  (title := "Equation (A.18)")
  (statement := /-- We define
  $$ c_4(\sigma, x_0) = x_0^{\sigma - 1}
  \left( \frac{2 \log x_0}{\pi R}
  + 1.8642 \right) k(\sigma, x_0). $$
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d23f277aa57f0df744f827aba10ffe84abca071f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
