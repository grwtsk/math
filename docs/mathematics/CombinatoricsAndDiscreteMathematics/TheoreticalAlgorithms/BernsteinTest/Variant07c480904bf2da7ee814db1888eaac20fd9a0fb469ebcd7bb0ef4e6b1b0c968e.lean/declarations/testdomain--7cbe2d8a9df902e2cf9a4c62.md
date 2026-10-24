# testDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5121cceff02d57691a24da3c2c3402425b9b6b4fce7baa3eb4bab422e3d9ec3f",
  "kind": "def",
  "lexical_name": "testDomain",
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
  "slug": "testdomain--7cbe2d8a9df902e2cf9a4c62",
  "source": {
    "blob": "3be58be3e48c95175c65e7c8e335867c23202f0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BernsteinTest/Variant07c480904bf2da7ee814db1888eaac20fd9a0fb469ebcd7bb0ef4e6b1b0c968e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cbe2d8a9df902e2cf9a4c62f0d1772e3ba717cd53b2041a3fb656bf2ca9d7ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BernsteinTest/Variant07c480904bf2da7ee814db1888eaac20fd9a0fb469ebcd7bb0ef4e6b1b0c968e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5121cceff02d57691a24da3c2c3402425b9b6b4fce7baa3eb4bab422e3d9ec3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testDomain : IntervalRat := ⟨0, 1, by norm_num⟩

-- Test: directly test the transformation functions
-- For P(x) = x - x² = 0 + 1*x + (-1)*x² on [0,1] centered at 0
-- Transformed to t ∈ [0,1]: u = 0 + t*1 = t, so Q(t) = t - t²
-- Monomial coeffs of Q: [0, 1, -1]
-- Bernstein coeffs: b₀ = 0, b₁ = 1/2, b₂ = 0 (should give range [0, 0.5])

-- Test monomialToBernstein directly with coefficient lists
#eval
  let monomialCoeffs : List ℚ := [0, 1, -1]  -- represents t - t²
  let bernstein := monomialToBernstein monomialCoeffs
  s!"Bernstein coeffs for t - t² on [0,1]: {bernstein}\n" ++
  s!"Expected: [0, 0.5, 0] (i.e., [0, 1/2, 0])"

#eval
  let monomialCoeffs : List ℚ := [0, 0, 1]  -- represents t²
  let bernstein := monomialToBernstein monomialCoeffs
  s!"Bernstein coeffs for t² on [0,1]: {bernstein}\n" ++
  s!"Expected: [0, 0, 1]"

#eval
  let monomialCoeffs : List ℚ := [1, -1]  -- represents 1 - t
  let bernstein := monomialToBernstein monomialCoeffs
  s!"Bernstein coeffs for 1-t on [0,1]: {bernstein}\n" ++
  s!"Expected: [1, 0]"

-- Test min/max
#eval
  let coeffs : List ℚ := [0, 1/2, 0]
  let bounds := listMinMax coeffs 0
  s!"Min/max of [0, 1/2, 0]: ({bounds.1}, {bounds.2})"

end LeanCert.Examples.BernsteinTest
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BernsteinTest/Variant07c480904bf2da7ee814db1888eaac20fd9a0fb469ebcd7bb0ef4e6b1b0c968e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BernsteinTest/Variant07c480904bf2da7ee814db1888eaac20fd9a0fb469ebcd7bb0ef4e6b1b0c968e.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be58be3e48c95175c65e7c8e335867c23202f0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
