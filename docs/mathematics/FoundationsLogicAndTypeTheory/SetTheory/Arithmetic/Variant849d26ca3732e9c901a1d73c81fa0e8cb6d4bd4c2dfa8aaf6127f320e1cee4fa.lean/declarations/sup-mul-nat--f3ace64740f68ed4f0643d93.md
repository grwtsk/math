# sup_mul_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b13b772a-e199-ee64-9f33-012c1875696b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bd6e083-5575-9ae6-5abf-663cb20bf5cf",
  "kind": "theorem",
  "lexical_name": "sup_mul_nat",
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
  "slug": "sup-mul-nat--f3ace64740f68ed4f0643d93",
  "source": {
    "blob": "70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2544,
    "line": 2529,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3ace64740f68ed4f0643d931b76340a0efc0cb0d39c1762055cdc1f085d66ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bd6e083-5575-9ae6-5abf-663cb20bf5cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2529–2544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_mul_nat (o : Ordinal) : (sup fun n : ℕ => o * n) = o * ω := by
  rcases eq_zero_or_pos o with (rfl | ho)
  · rw [zero_mul]
    exact sup_eq_zero_iff.2 fun n => zero_mul (n : Ordinal)
  · exact (mul_isNormal ho).apply_omega
#align ordinal.sup_mul_nat Ordinal.sup_mul_nat

end Ordinal

variable {α : Type u} {r : α → α → Prop} {a b : α}

namespace Acc

/-- The rank of an element `a` accessible under a relation `r` is defined inductively as the
smallest ordinal greater than the ranks of all elements below it (i.e. elements `b` such that
`r b a`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean#L2529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
