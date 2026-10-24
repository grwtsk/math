# iSupLift_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e33b00875de2b99d730455dae7c2a5af82abaef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43198c3f-89f1-2c75-7dc7-0a18134e0e74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfbde3d0-0c6f-ff4d-a236-7e01a48d7101",
  "kind": "theorem",
  "lexical_name": "iSupLift_inclusion",
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
  "slug": "isuplift-inclusion--15e93faae744a1f27795981e",
  "source": {
    "blob": "3e33b00875de2b99d730455dae7c2a5af82abaef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e93faae744a1f27795981ec4d2c6243a709310c4e8499983d838f9011155e7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfbde3d0-0c6f-ff4d-a236-7e01a48d7101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSupLift_inclusion {dir : Directed (· ≤ ·) K} {f : ∀ i, K i →ₐ[R] B}
    {hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h)}
    {T : Subalgebra R A} {hT : T = iSup K} {i : ι} (x : K i) (h : K i ≤ T) :
    iSupLift K dir f hf T hT (inclusion h x) = f i x := by
  dsimp [iSupLift, inclusion]
  rw [Set.iUnionLift_inclusion]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e33b00875de2b99d730455dae7c2a5af82abaef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
