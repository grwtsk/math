# constantCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:957027823716d754aa0a612241f19f60565ee65d7df9e87b7856fee4e0cba7f2",
  "kind": "def",
  "lexical_name": "constantCoeff",
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
  "slug": "constantcoeff--6f9373381bf19fc698e6021c",
  "source": {
    "blob": "d964dc1088b7f1530f04d408d3b2935ac64c621c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 429,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc28a1e22ab920016e9ad1c393db335c7007d34a21a40a3d53bf65e153351036b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f9373381bf19fc698e6021c15af4b595d7e27a256ced80e2956a184ec945243",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc28a1e22ab920016e9ad1c393db335c7007d34a21a40a3d53bf65e153351036b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:957027823716d754aa0a612241f19f60565ee65d7df9e87b7856fee4e0cba7f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantCoeff : MvPowerSeries σ R →+* R :=
  { coeff R (0 : σ →₀ ℕ) with
    toFun := coeff R (0 : σ →₀ ℕ)
    map_one' := coeff_zero_one
    map_mul' := fun φ ψ => by classical simp [coeff_mul, support_single_ne_zero]
    map_zero' := LinearMap.map_zero _ }

variable {σ} {R}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc28a1e22ab920016e9ad1c393db335c7007d34a21a40a3d53bf65e153351036b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc28a1e22ab920016e9ad1c393db335c7007d34a21a40a3d53bf65e153351036b.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d964dc1088b7f1530f04d408d3b2935ac64c621c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
