# exact_closed_primitive_weight_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b546dddf-a119-3958-edcb-f25b43f5585a",
  "kind": "theorem",
  "lexical_name": "exact_closed_primitive_weight_row",
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
  "slug": "exact-closed-primitive-weight-row--b86c424a65b773eac1e274ca",
  "source": {
    "blob": "0d9215002a8c434ab2a0174941c7b42e2b0934a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b86c424a65b773eac1e274ca604d1320d063e0b9bff1a951a719bd596b5eea17",
  "verification": {
    "reference": "docs/verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b546dddf-a119-3958-edcb-f25b43f5585a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_closed_primitive_weight_row (x : ℝ) :
    ArithmeticPrimitive.closedPrimitive (fun n ↦ ArithmeticFunction.vonMangoldt n - 1) x =
      ∑ n ∈ Finset.Icc 2 ⌊x⌋₊,
        (ArithmeticFunction.vonMangoldt n - 1) * primitiveWeight x n := by
  unfold ArithmeticPrimitive.closedPrimitive ArithmeticPrimitive.finitePrimitive primitiveWeight
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9215002a8c434ab2a0174941c7b42e2b0934a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
