# dpow_comp

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
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c375d4dc-ecad-b426-b3b2-4067a8730e7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcb1c313-ea57-ab0b-c4be-9f953925bd5f",
  "kind": "theorem",
  "lexical_name": "dpow_comp",
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
  "slug": "dpow-comp--99fb4e6e81ad8130fb5b0746",
  "source": {
    "blob": "bb184a8a32a45039fe19e4b9ae9073ea78410178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 163,
    "path": "GRWTSK/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99fb4e6e81ad8130fb5b0746a021a57a7703b613ec3ff384a2338529d0bdd571",
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

Occurrence: `result:fcb1c313-ea57-ab0b-c4be-9f953925bd5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dpow_comp {n : ℕ} (hn_fac : IsUnit ((n - 1).factorial : A)) (hnI : I ^ n = 0)
    {m k : ℕ} (hk : k ≠ 0) {x : A} (hx : x ∈ I) :
    dpow I m (dpow I k x) = ↑(uniformBell m k) * dpow I (m * k) x := by
  by_cases! hmk : m * k < n
  · exact dpow_comp_of_mul_lt hn_fac hk hmk hx
  · have hxmk : x ^ (m * k) = 0 := Ideal.pow_eq_zero_of_mem hnI hmk hx
    rw [dpow_eq_of_mem (dpow_mem hk hx), dpow_eq_of_mem hx, dpow_eq_of_mem hx,
      mul_pow, ← pow_mul, ← mul_assoc, mul_comm k, hxmk, mul_zero, mul_zero, mul_zero]

set_option linter.style.whitespace false in -- manual alignment is not recognised
/-- If `(n-1)!` is invertible in `A` and `I^n = 0`, then `I` admits a divided power structure.
  Proposition 1.2.7 of [B74], part (ii). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatAlgebra/Variant94145c9b34ceee615e3ce101dafa4c1aae949b8dee234bf9eedab7416bc367c5.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb184a8a32a45039fe19e4b9ae9073ea78410178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
