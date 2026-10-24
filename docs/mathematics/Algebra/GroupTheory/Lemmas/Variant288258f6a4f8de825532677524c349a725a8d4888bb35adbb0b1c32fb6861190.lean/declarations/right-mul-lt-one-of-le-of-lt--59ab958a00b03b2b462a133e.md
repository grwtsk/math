# Right.mul_lt_one_of_le_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:790d664b-33be-68fd-8cd7-b0fad1468f53",
  "kind": "theorem",
  "lexical_name": "Right.mul_lt_one_of_le_of_lt",
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
  "slug": "right-mul-lt-one-of-le-of-lt--59ab958a00b03b2b462a133e",
  "source": {
    "blob": "93c5dbcb8e9006c93f13e932c2ae88af47ef9f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 849,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59ab958a00b03b2b462a133ec5477d93a5eea62f97678cfd18da8375ccdaf488",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:790d664b-33be-68fd-8cd7-b0fad1468f53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Right.mul_lt_one_of_le_of_lt [CovariantClass α α (swap (· * ·)) (· ≤ ·)] {a b : α}
    (ha : a ≤ 1) (hb : b < 1) :
    a * b < 1 :=
  mul_lt_of_le_one_of_lt ha hb
#align right.mul_lt_one_of_le_of_lt Right.mul_lt_one_of_le_of_lt
#align right.add_neg_of_nonpos_of_neg Right.add_neg_of_nonpos_of_neg

/-- Assumes right covariance.
The lemma assuming left covariance is `Left.mul_lt_one`. -/
@[to_additive "Assumes right covariance.
The lemma assuming left covariance is `Left.add_neg`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c5dbcb8e9006c93f13e932c2ae88af47ef9f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
