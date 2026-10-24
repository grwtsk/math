# iterate_derivative_at_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce0f73c912f27a356d0f28d0c06b1a2e6a46f503",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fa4b568-9e4e-e337-9c52-15e2725782b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acff6a0a-6d9e-9e6a-b14b-96fc29a4b3c0",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_at_1",
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
  "slug": "iterate-derivative-at-1--f96de14c53fb69a9bb7a998e",
  "source": {
    "blob": "ce0f73c912f27a356d0f28d0c06b1a2e6a46f503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96de14c53fb69a9bb7a998e9e9cc80bbaa4a265b068c4b2a3145720090807b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acff6a0a-6d9e-9e6a-b14b-96fc29a4b3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_at_1 (n ν : ℕ) (h : ν ≤ n) :
    (Polynomial.derivative^[n - ν] (bernsteinPolynomial R n ν)).eval 1 =
      (-1) ^ (n - ν) * (pochhammer R (n - ν)).eval (ν + 1 : R) := by
  rw [flip' _ _ _ h]
  simp [Polynomial.eval_comp, h]
  obtain rfl | h' := h.eq_or_lt
  · simp
  · congr
    norm_cast
    rw [← tsub_add_eq_tsub_tsub, tsub_tsub_cancel_of_le (Nat.succ_le_iff.mpr h')]
#align bernstein_polynomial.iterate_derivative_at_1 bernsteinPolynomial.iterate_derivative_at_1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0f73c912f27a356d0f28d0c06b1a2e6a46f503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
