# variance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d810542-b635-5062-1b42-3ff237933957",
  "kind": "theorem",
  "lexical_name": "variance",
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
  "slug": "variance--98faf3c467ae21554365fa6d",
  "source": {
    "blob": "c30244dc17291af4c94971f159a59acefacb0d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98faf3c467ae21554365fa6d3b7f19011f465b5e5a48ab7971f92bf97cfb8275",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d810542-b635-5062-1b42-3ff237933957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem variance {n : ℕ} (hn : n ≠ 0) (x : I) :
    (∑ k : Fin (n + 1), (x - k/ₙ : ℝ) ^ 2 * bernstein n k x) = (x : ℝ) * (1 - x) / n := by
  convert congr(Polynomial.aeval (x : ℝ) $(bernsteinPolynomial.variance ℝ n) / n ^ 2) using 1 <;>
    field_simp [z, ← Finset.sum_div, bernstein_apply, Finset.sum_range, bernsteinPolynomial] <;>
    ring_nf

end bernstein

open bernstein

local postfix:1024 "/ₙ" => z

variable {E : Type*} [AddCommGroup E] [TopologicalSpace E] [IsTopologicalAddGroup E]
  [Module ℝ E] [ContinuousSMul ℝ E]

/-- The `n`-th approximation of a continuous function on `[0,1]` by Bernstein polynomials,
given by `∑ k, bernstein n k x • f (k/n)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c30244dc17291af4c94971f159a59acefacb0d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
