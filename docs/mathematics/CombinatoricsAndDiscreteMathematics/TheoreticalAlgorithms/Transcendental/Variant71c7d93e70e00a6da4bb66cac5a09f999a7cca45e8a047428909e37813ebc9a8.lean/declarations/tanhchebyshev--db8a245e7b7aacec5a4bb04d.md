# tanhChebyshev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a967d44c0878cef9ed890bb2fae8357babfc75108be293866f0001d506ee2c95",
  "kind": "def",
  "lexical_name": "tanhChebyshev",
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
  "slug": "tanhchebyshev--db8a245e7b7aacec5a4bb04d",
  "source": {
    "blob": "5f4d26807738525e298287e45eba1fc8b4bdd2ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db8a245e7b7aacec5a4bb04dff0c7f6ba99b747e61d6bc7fb2163f0363f83e19",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a967d44c0878cef9ed890bb2fae8357babfc75108be293866f0001d506ee2c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tanhChebyshev (a : AffineForm) : AffineForm :=
  let I := a.toInterval
  let lo := I.lo
  let hi := I.hi
  let m := (lo + hi) / 2

  -- Compute tanh(m) and tanh'(m) = 1 - tanh²(m)
  let tanh_m_I := LeanCert.Engine.tanhInterval ⟨m, m, le_refl _⟩
  let tanh_m := (tanh_m_I.lo + tanh_m_I.hi) / 2
  let deriv := 1 - tanh_m * tanh_m  -- sech²(m)

  -- Tangent: L(x) = tanh(m) + deriv·(x - m)
  let α := deriv
  let β := tanh_m - deriv * m

  -- Error bound: for tanh, the second derivative is bounded
  -- |tanh''(x)| = |2·tanh(x)·sech²(x)| ≤ 2
  -- So error ≤ width² / 2
  let width := hi - lo
  let δ := width * width

  let scaled := scale α a
  let shifted := add scaled (const β)
  { c0 := shifted.c0
    coeffs := shifted.coeffs
    r := shifted.r + |δ|
    r_nonneg := by linarith [shifted.r_nonneg, abs_nonneg δ] }

/-! ## Natural Logarithm -/

/-- Logarithm using interval evaluation (requires positive input). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4d26807738525e298287e45eba1fc8b4bdd2ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
