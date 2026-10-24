# sum_eq_zero_of_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39a99b20-b431-70a2-f768-9ef67acc612e",
  "kind": "theorem",
  "lexical_name": "sum_eq_zero_of_ne_one",
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
  "slug": "sum-eq-zero-of-ne-one--510f0cf4a876fa426ac27c58",
  "source": {
    "blob": "1a4f9d43e29eae9bcb559cf515bfcbc90efdae91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 616,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:510f0cf4a876fa426ac27c58414c6700a9672d0375268d539076209f27bdde27",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a99b20-b431-70a2-f768-9ef67acc612e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_zero_of_ne_one [IsDomain R'] {χ : MulChar R R'} (hχ : χ ≠ 1) : ∑ a, χ a = 0 := by
  rcases ne_one_iff.mp hχ with ⟨b, hb⟩
  refine eq_zero_of_mul_eq_self_left hb ?_
  simpa only [Finset.mul_sum, ← map_mul] using b.mulLeft_bijective.sum_comp _

/-- The sum over all values of the trivial multiplicative character on a finite ring is
the cardinality of its unit group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a4f9d43e29eae9bcb559cf515bfcbc90efdae91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
