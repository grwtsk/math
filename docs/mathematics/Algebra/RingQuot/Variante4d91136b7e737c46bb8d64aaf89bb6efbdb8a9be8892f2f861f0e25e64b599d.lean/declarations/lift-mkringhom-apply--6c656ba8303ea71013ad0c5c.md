# lift_mkRingHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26ba397acab1672dc3e4e3fea49caa7877b18e91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:888e8324-840e-934f-1698-27d66d088175",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce9c52cc-204d-3844-d230-7877a8dabf83",
  "kind": "theorem",
  "lexical_name": "lift_mkRingHom_apply",
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
  "slug": "lift-mkringhom-apply--6c656ba8303ea71013ad0c5c",
  "source": {
    "blob": "26ba397acab1672dc3e4e3fea49caa7877b18e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 385,
    "path": "GRWTSK/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c656ba8303ea71013ad0c5c420304d9ea8243b715d4bc2f33ced2553fccea3b",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce9c52cc-204d-3844-d230-7877a8dabf83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_mkRingHom_apply (f : R →+* T) {r : R → R → Prop} (w : ∀ ⦃x y⦄, r x y → f x = f y) (x) :
    lift ⟨f, w⟩ (mkRingHom r x) = f x := by
  simp_rw [lift_def, preLift_def, mkRingHom_def]
  rfl

-- note this is essentially `lift.symm_apply_eq.mp h`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba397acab1672dc3e4e3fea49caa7877b18e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
