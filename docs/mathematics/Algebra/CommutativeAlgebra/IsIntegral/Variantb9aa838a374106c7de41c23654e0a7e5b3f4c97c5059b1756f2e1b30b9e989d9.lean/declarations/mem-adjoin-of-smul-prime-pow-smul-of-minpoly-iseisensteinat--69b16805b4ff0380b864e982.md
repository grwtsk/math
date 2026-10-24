# mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19558920-677e-474b-6639-f7330f0d0e8f",
  "kind": "theorem",
  "lexical_name": "mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt",
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
  "slug": "mem-adjoin-of-smul-prime-pow-smul-of-minpoly-iseisensteinat--69b16805b4ff0380b864e982",
  "source": {
    "blob": "97ba6c4e1f054274422814b7b92add3079fc1022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 379,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69b16805b4ff0380b864e98214d9b75a82cf23802cd48d9547d90b770138f67b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19558920-677e-474b-6639-f7330f0d0e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt {B : PowerBasis K L}
    (hp : Prime p) (hBint : IsIntegral R B.gen) {n : ℕ} {z : L} (hzint : IsIntegral R z)
    (hz : p ^ n • z ∈ adjoin R ({B.gen} : Set L)) (hei : (minpoly R B.gen).IsEisensteinAt 𝓟) :
    z ∈ adjoin R ({B.gen} : Set L) := by
  induction' n with n hn
  · simpa using hz
  · rw [_root_.pow_succ', mul_smul] at hz
    exact
      hn (mem_adjoin_of_smul_prime_smul_of_minpoly_isEisensteinAt hp hBint (hzint.smul _) hz hei)

end IsIntegral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ba6c4e1f054274422814b7b92add3079fc1022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
