# splits_cyclotomic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:989e33e0-694f-d38e-7e88-981725842685",
  "kind": "theorem",
  "lexical_name": "splits_cyclotomic",
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
  "slug": "splits-cyclotomic--22d12f6a6a1ff8a03f700979",
  "source": {
    "blob": "5456111966d1c90879da68276d6db1edb51fddfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 432,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22d12f6a6a1ff8a03f7009796851fdf11cead12ecc07cba9ce18211e745225b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:989e33e0-694f-d38e-7e88-981725842685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_cyclotomic [IsCyclotomicExtension S K L] (hS : n ∈ S) :
    Splits (algebraMap K L) (cyclotomic n K) := by
  refine splits_of_splits_of_dvd _ (X_pow_sub_C_ne_zero n.pos _) (splits_X_pow_sub_one K L hS) ?_
  use ∏ i ∈ (n : ℕ).properDivisors, Polynomial.cyclotomic i K
  rw [(eq_cyclotomic_iff n.pos _).1 rfl, RingHom.map_one]

variable (n S)

section Singleton

variable [IsCyclotomicExtension {n} K L]

/-- If `IsCyclotomicExtension {n} K L`, then `L` is the splitting field of `X ^ n - 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5456111966d1c90879da68276d6db1edb51fddfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
