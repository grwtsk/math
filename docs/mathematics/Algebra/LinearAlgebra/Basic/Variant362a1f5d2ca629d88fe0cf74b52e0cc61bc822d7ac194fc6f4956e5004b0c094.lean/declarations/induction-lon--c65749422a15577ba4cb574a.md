# induction_lon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fab2cb8c8c6f42d0ec5b40fff11fd2a255b69bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ac47c63-958a-a432-1858-acec5a92668e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c518f25-4c89-d0cc-5bd1-e989437f44f2",
  "kind": "theorem",
  "lexical_name": "induction_lon",
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
  "slug": "induction-lon--c65749422a15577ba4cb574a",
  "source": {
    "blob": "0fab2cb8c8c6f42d0ec5b40fff11fd2a255b69bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c65749422a15577ba4cb574a9ec0a0b2125d1887e199f6ef230a8725a0989056",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c518f25-4c89-d0cc-5bd1-e989437f44f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_lon {R : Type*} [Semiring R] {ι : Type*} [DecidableEq ι]
    {M : ι → Type*} [(i : ι) → AddCommMonoid <| M i] [(i : ι) → Module R (M i)]
    {motive : (⨁ i, M i) → Prop} (x : ⨁ i, M i)
    (zero : motive 0)
    (lof : ∀ i (x : M i), motive (lof R ι M i x))
    (add : ∀ (x y : ⨁ i, M i), motive x → motive y → motive (x + y)) : motive x := by
  induction x using DirectSum.induction_on with
  | zero => exact zero
  | of => exact lof _ _
  | add x y hx hy => exact add x y hx hy

end DirectSum

namespace RingQuot
universe uS uA uB

open scoped Function -- required for scoped `on` notation

/-- If two `R`-algebras are `R`-equivalent and their quotients by a relation `rel` are defined,
then their quotients are also `R`-equivalent.

(Special case of the third isomorphism theorem.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fab2cb8c8c6f42d0ec5b40fff11fd2a255b69bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
