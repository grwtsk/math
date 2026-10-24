# toDual_linearCombination_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:153785fa-faa1-0997-3e6f-c03b061b0c0c",
  "kind": "theorem",
  "lexical_name": "toDual_linearCombination_right",
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
  "slug": "todual-linearcombination-right--20f3cf4b3340cc059eff5f42",
  "source": {
    "blob": "fba7f4dfa86f41a9fa5dd8880f1b96330eae1717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant42d12440ca4ad764868507f5bca4b74a162f02f9116605d42d63b326fc970f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20f3cf4b3340cc059eff5f4282aab8ee5507e573b01209a23a5f4575322f53a7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant42d12440ca4ad764868507f5bca4b74a162f02f9116605d42d63b326fc970f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:153785fa-faa1-0997-3e6f-c03b061b0c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toDual_linearCombination_right (f : ι →₀ R) (i : ι) :
    b.toDual (b i) (Finsupp.linearCombination R b f) = f i := by
  rw [Finsupp.linearCombination_apply, Finsupp.sum, map_sum]
  simp_rw [map_smul, toDual_apply, smul_eq_mul, mul_boole, Finset.sum_ite_eq,
    Finsupp.if_mem_support]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant42d12440ca4ad764868507f5bca4b74a162f02f9116605d42d63b326fc970f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant42d12440ca4ad764868507f5bca4b74a162f02f9116605d42d63b326fc970f7b.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba7f4dfa86f41a9fa5dd8880f1b96330eae1717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
