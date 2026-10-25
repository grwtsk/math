# mul_pp_pf_overlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8124b97c-26ab-17f4-9199-736c074d140e",
  "kind": "theorem",
  "lexical_name": "mul_pp_pf_overlap",
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
  "slug": "mul-pp-pf-overlap--200c3ff83e0787fb18daad61",
  "source": {
    "blob": "bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 377,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:200c3ff83e0787fb18daad6153373d4b37b8f92aee6d8a013b1c8c6fea140f59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8124b97c-26ab-17f4-9199-736c074d140e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_pp_pf_overlap (x : R) (_ : ea + eb = e) (_ : a₂ * b₂ = c) :
    (x ^ ea * a₂ : R) * (x ^ eb * b₂) = x ^ e * c := by
  subst_vars; simp [pow_add, mul_mul_mul_comm]

/-- Multiplies two monomials `va, vb` together to get a normalized result monomial.

* `x * y = (x * y)` (for `x`, `y` coefficients)
* `x * (b₁ * b₂) = b₁ * (b₂ * x)` (for `x` coefficient)
* `(a₁ * a₂) * y = a₁ * (a₂ * y)` (for `y` coefficient)
* `(x ^ ea * a₂) * (x ^ eb * b₂) = x ^ (ea + eb) * (a₂ * b₂)`
    (if `ea` and `eb` are identical except coefficient)
* `(a₁ * a₂) * (b₁ * b₂) = a₁ * (a₂ * (b₁ * b₂))` (if `a₁.lt b₁`)
* `(a₁ * a₂) * (b₁ * b₂) = b₁ * ((a₁ * a₂) * b₂)` (if not `a₁.lt b₁`)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
