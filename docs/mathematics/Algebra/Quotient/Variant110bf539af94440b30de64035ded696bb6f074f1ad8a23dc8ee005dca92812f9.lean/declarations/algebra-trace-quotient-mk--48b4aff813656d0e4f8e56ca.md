# Algebra.trace_quotient_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dc353b98dddfe4a306de02429fb6a1f23175f4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/110bf539af94440b30de64035ded696bb6f074f1ad8a23dc8ee005dca92812f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d16a05ba-605c-3d29-8fc0-d9b947c37fa4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8fba149-2192-ed04-6b9d-beb921704b80",
  "kind": "lemma",
  "lexical_name": "Algebra.trace_quotient_mk",
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
  "slug": "algebra-trace-quotient-mk--48b4aff813656d0e4f8e56ca",
  "source": {
    "blob": "6dc353b98dddfe4a306de02429fb6a1f23175f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 40,
    "path": "GRWTSK/Algebra/Quotient/Variant110bf539af94440b30de64035ded696bb6f074f1ad8a23dc8ee005dca92812f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48b4aff813656d0e4f8e56ca39b0b1e208308f4d790e5c09ca7f3619f1b668cc",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Variant110bf539af94440b30de64035ded696bb6f074f1ad8a23dc8ee005dca92812f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8fba149-2192-ed04-6b9d-beb921704b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.trace_quotient_mk [IsLocalRing R] (x : S) :
    Algebra.trace (R ⧸ p) (S ⧸ pS) (Ideal.Quotient.mk pS x) =
      Ideal.Quotient.mk p (Algebra.trace R S x) := by
  let ι := Module.Free.ChooseBasisIndex R S
  let b : Module.Basis ι R S := Module.Free.chooseBasis R S
  rw [trace_eq_matrix_trace b, trace_eq_matrix_trace (basisQuotient b), AddMonoidHom.map_trace]
  congr 1
  ext i j
  simp only [leftMulMatrix_apply, coe_lmul_eq_mul, LinearMap.toMatrix_apply,
    basisQuotient_apply, LinearMap.mul_apply', Matrix.map_apply, ← map_mul,
    basisQuotient_repr]

end IsLocalRing

section IsDedekindDomain

variable (p : Ideal R) [p.IsMaximal]
variable (Rₚ Sₚ : Type*) [CommRing Rₚ] [CommRing Sₚ] [Algebra R Rₚ] [IsLocalization.AtPrime Rₚ p]
variable [IsLocalRing Rₚ] [Algebra S Sₚ] [Algebra R Sₚ] [Algebra Rₚ Sₚ]
variable [IsLocalization (Algebra.algebraMapSubmonoid S p.primeCompl) Sₚ]
variable [IsScalarTower R S Sₚ] [IsScalarTower R Rₚ Sₚ]

attribute [local instance] Ideal.Quotient.field

local notation "pS" => Ideal.map (algebraMap R S) p
local notation "pSₚ" => Ideal.map (algebraMap Rₚ Sₚ) (maximalIdeal Rₚ)

variable (S)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Variant110bf539af94440b30de64035ded696bb6f074f1ad8a23dc8ee005dca92812f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Variant110bf539af94440b30de64035ded696bb6f074f1ad8a23dc8ee005dca92812f9.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc353b98dddfe4a306de02429fb6a1f23175f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
