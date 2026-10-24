# dpow_of_two_le

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
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de1bfd2a-f1af-d371-374a-b0f810857a83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ce62083-ab29-fd1f-1a16-fb448035e6f3",
  "kind": "theorem",
  "lexical_name": "dpow_of_two_le",
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
  "slug": "dpow-of-two-le--b44e7474610a2c86ff44d5da",
  "source": {
    "blob": "bb184a8a32a45039fe19e4b9ae9073ea78410178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 203,
    "path": "GRWTSK/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b44e7474610a2c86ff44d5dab5a322a85ec8ff42f63620ce9b12019b67e1a5dc",
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

Occurrence: `result:8ce62083-ab29-fd1f-1a16-fb448035e6f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dpow_of_two_le {n : ℕ} (hn : 2 ≤ n) (a : A) :
    (dividedPowers hI2) n a = 0 := by
  simp only [dividedPowers, OfInvertibleFactorial.dpow_apply, ite_eq_right_iff]
  intro ha
  rw [Ideal.pow_eq_zero_of_mem hI2 hn ha, mul_zero]

end OfSquareZero

namespace IsNilpotent

variable {A : Type*} [CommRing A] {p : ℕ} [Fact (Nat.Prime p)] (hp : IsNilpotent (p : A))
  {I : Ideal A} [DecidablePred (fun x ↦ x ∈ I)] (hIp : I ^ p = 0)

/-- If `A` is a commutative ring of prime characteristic `p` and `I` is an ideal such that
  `I^p = 0`, then `I` admits a divided power structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb184a8a32a45039fe19e4b9ae9073ea78410178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
