# sum_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c30d4704-c6c3-217a-bc4b-e9c3e8f96c78",
  "kind": "lemma",
  "lexical_name": "sum_telescope",
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
  "slug": "sum-telescope--3fc45095b52d50b5b2768c65",
  "source": {
    "blob": "f41a433509c68b5617dde6a0c14f3f028f34a577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 163,
    "path": "GRWTSK/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc45095b52d50b5b2768c65c17da100c39c26e2236545cc891d16a264cc5827",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c30d4704-c6c3-217a-bc4b-e9c3e8f96c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_telescope {m n : ℕ} (hm : N ≤ m) (hn : m < n) :
    ∑ j ∈ Ico m n, (a j - b) = ∑ x ∈ pool a n, x - ∑ x ∈ pool a m, x :=
  calc
    _ = ∑ j ∈ Ico m n, (∑ x ∈ pool a (j + 1), x - ∑ x ∈ pool a j, x) := by
      congr! 1 with j hj; rw [sum_sub_sum_eq_sub ha hbN]; simp at hj; omega
    _ = _ := sum_Ico_sub (∑ x ∈ pool a ·, x) hn.le

include ht in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41a433509c68b5617dde6a0c14f3f028f34a577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
