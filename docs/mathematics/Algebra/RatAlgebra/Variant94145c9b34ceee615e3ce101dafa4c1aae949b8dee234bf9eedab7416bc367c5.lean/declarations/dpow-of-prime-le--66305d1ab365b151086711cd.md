# dpow_of_prime_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb184a8a32a45039fe19e4b9ae9073ea78410178",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d9caee1-b1b3-496f-9b23-97f5b5bcc181",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff310e98-7753-c053-5dcb-01f63dafe950",
  "kind": "theorem",
  "lexical_name": "dpow_of_prime_le",
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
  "slug": "dpow-of-prime-le--66305d1ab365b151086711cd",
  "source": {
    "blob": "bb184a8a32a45039fe19e4b9ae9073ea78410178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 239,
    "path": "GRWTSK/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66305d1ab365b151086711cdf754729e468e745083d85feda869de5a9815440a",
  "verification": {
    "reference": "docs/verification/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff310e98-7753-c053-5dcb-01f63dafe950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dpow_of_prime_le {n : ℕ} (hn : p ≤ n) (a : A) : (dividedPowers A p hIp) n a = 0 := by
  simp only [dividedPowers, IsNilpotent.dividedPowers, OfInvertibleFactorial.dpow_apply,
    ite_eq_right_iff]
  intro ha
  rw [Ideal.pow_eq_zero_of_mem hIp hn ha, mul_zero]

end CharP

-- We formalize example 2 from [BO], Section 3.
namespace RatAlgebra

variable {R : Type*} [CommSemiring R] (I : Ideal R) [DecidablePred (fun x ↦ x ∈ I)]

/-- The family `ℕ → R → R` given by `dpow n x = x ^ n / n!`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb184a8a32a45039fe19e4b9ae9073ea78410178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
