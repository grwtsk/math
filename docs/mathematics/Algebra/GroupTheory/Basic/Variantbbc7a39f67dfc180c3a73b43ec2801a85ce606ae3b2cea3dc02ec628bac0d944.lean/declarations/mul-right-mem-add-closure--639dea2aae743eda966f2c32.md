# mul_right_mem_add_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57d2874f-cd1c-0c6a-123a-b496859e4109",
  "kind": "lemma",
  "lexical_name": "mul_right_mem_add_closure",
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
  "slug": "mul-right-mem-add-closure--639dea2aae743eda966f2c32",
  "source": {
    "blob": "a68b1d45afc1813530c4c97ecc7bb218d6403815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:639dea2aae743eda966f2c32134dad3ac856db8ab74942bbdbf15b25da047b06",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d2874f-cd1c-0c6a-123a-b496859e4109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_right_mem_add_closure (ha : a ∈ closure (S : Set R)) (hb : b ∈ S) :
    a * b ∈ closure (S : Set R) := by
  induction ha using closure_induction with
  | mem r hr => exact AddSubmonoid.mem_closure.mpr fun y hy => hy (mul_mem hr hb)
  | one => simp only [zero_mul, zero_mem _]
  | mul r s _ _ hr hs => simpa only [add_mul] using add_mem hr hs

/-- The product of two elements of the additive closure of a submonoid `M` is an element of the
additive closure of `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a68b1d45afc1813530c4c97ecc7bb218d6403815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
