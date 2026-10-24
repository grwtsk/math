# actual_zeroFiber_support_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8907a247a43cb0643fcc4b21fc98c48bb6d09d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00436d8a-8e6d-0012-f982-175feaf44b02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ef08654-b98b-ceb2-892b-6637ee2a5fe8",
  "kind": "theorem",
  "lexical_name": "actual_zeroFiber_support_infinite",
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
  "slug": "actual-zerofiber-support-infinite--c894d1710c6a133ea17194dd",
  "source": {
    "blob": "c8907a247a43cb0643fcc4b21fc98c48bb6d09d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c894d1710c6a133ea17194dd9963d10411902ac2c2944fa8de3f5f5c587975c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ef08654-b98b-ceb2-892b-6637ee2a5fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_zeroFiber_support_infinite : (Function.support zeroFiber).Infinite := by
  let f : ℕ→Ideal ℤ×Ideal ℤ×Ideal ℤ := fun n=>(0,Ideal.span ({(n:ℤ)} : Set ℤ),1)
  have hinj : Function.Injective f := by
    intro m n h
    apply integer_span_nat_injective
    exact congrArg (fun p : Ideal ℤ×Ideal ℤ×Ideal ℤ=>p.2.1) h
  apply Set.infinite_of_injective_forall_mem hinj
  intro n
  simp [f,Function.mem_support,zeroFiber]

/-- Compact W, positive scale and the actual window implication hold; only zero cancellation fails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8907a247a43cb0643fcc4b21fc98c48bb6d09d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
