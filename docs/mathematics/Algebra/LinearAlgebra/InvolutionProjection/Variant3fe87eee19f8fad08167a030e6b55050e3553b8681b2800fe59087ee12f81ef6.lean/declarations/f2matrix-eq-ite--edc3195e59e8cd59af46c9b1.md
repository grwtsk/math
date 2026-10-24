# f2Matrix_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db76815d283b3d7e8fcf9310109d533533594083",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4714eb64-9ef2-3756-daa3-20e0f15ee9cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4daad2b9-747e-49f6-849b-b453bec3d6de",
  "kind": "theorem",
  "lexical_name": "f2Matrix_eq_ite",
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
  "slug": "f2matrix-eq-ite--edc3195e59e8cd59af46c9b1",
  "source": {
    "blob": "db76815d283b3d7e8fcf9310109d533533594083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edc3195e59e8cd59af46c9b1977fb2413d706d7d36da4a39fbe447930763a753",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4daad2b9-747e-49f6-849b-b453bec3d6de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem f2Matrix_eq_ite (i j : Fin P.width) :
    P.f2Matrix i j =
      if P.encode (P.source.act (P.encode.symm j)) = i then 1 else 0 := by
  rw [P.f2_spec]
  by_cases h : P.encode (P.source.act (P.encode.symm j)) = i
  · have hb : P.actionMatrix i j = true := (P.action_spec i j).mpr h
    simp [hb, h]
  · have hb : P.actionMatrix i j = false := by
      cases hvalue : P.actionMatrix i j
      · rfl
      · exact False.elim (h ((P.action_spec i j).mp hvalue))
    simp [hb, h]

/-- One-hot vector representing a state under the selected encoding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db76815d283b3d7e8fcf9310109d533533594083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
