# eval_polynomialY_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e393bb19-2624-614a-6c17-7fe0ef33717c",
  "kind": "lemma",
  "lexical_name": "eval_polynomialY_zero",
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
  "slug": "eval-polynomialy-zero--3e2df96466a0219e4975a562",
  "source": {
    "blob": "c6a2fc39e4dcc96ebfcdbdef0e3f1103e3591c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 762,
    "line": 755,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e2df96466a0219e4975a562cbf7297a0ea8333c9dbfb7976e9618de4cd6a1d9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e393bb19-2624-614a-6c17-7fe0ef33717c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eval_polynomialY_zero : (W.polynomialY.eval 0).eval 0 = W.a₃ := by
  simp only [← C_0, eval_polynomialY, zero_add, mul_zero]
set_option linter.uppercaseLean3 false in
#align weierstrass_curve.eval_polynomial_Y_zero WeierstrassCurve.eval_polynomialY_zero

-- porting note: added `protected` for consistency with `WeierstrassCurve.polynomial`
/-- The proposition that an affine point $(x, y)$ on `W` is nonsingular.
In other words, either $W_X(x, y) \ne 0$ or $W_Y(x, y) \ne 0$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6a2fc39e4dcc96ebfcdbdef0e3f1103e3591c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
