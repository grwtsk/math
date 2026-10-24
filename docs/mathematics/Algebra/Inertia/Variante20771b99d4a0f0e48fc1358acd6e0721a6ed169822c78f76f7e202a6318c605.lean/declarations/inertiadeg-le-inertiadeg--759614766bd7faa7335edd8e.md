# inertiaDeg'_le_inertiaDeg'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aeddf4dd3156559032004e267ba77f57a0cddc82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c83fde5f-332d-b7de-4e70-8c8319fed8c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b534703a-71e5-ad9b-4f6c-cccc7d5d674c",
  "kind": "theorem",
  "lexical_name": "inertiaDeg'_le_inertiaDeg'",
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
  "slug": "inertiadeg-le-inertiadeg--759614766bd7faa7335edd8e",
  "source": {
    "blob": "aeddf4dd3156559032004e267ba77f57a0cddc82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 155,
    "path": "GRWTSK/Algebra/Inertia/Variante20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:759614766bd7faa7335edd8e41b6ae45522dfd7b46b5b8b176ceaa993996fa60",
  "verification": {
    "reference": "docs/verification/Algebra/Inertia/Variante20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b534703a-71e5-ad9b-4f6c-cccc7d5d674c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertiaDeg'_le_inertiaDeg' {T : Type*} [CommRing T] [Algebra R T] [Algebra S T]
    [IsScalarTower R S T] [Module.Finite R T] (Q : Ideal T) [P.LiesOver p] [Q.LiesOver P]
    [p.IsPrime] : inertiaDeg' P Q ≤ inertiaDeg' p Q := by
  have : Q.LiesOver p := LiesOver.trans Q P p
  rw [inertiaDeg'_algebraMap, inertiaDeg'_algebraMap]
  have : IsScalarTower (R ⧸ p) (S ⧸ P) (T ⧸ Q) := IsScalarTower.of_algebraMap_eq <| by
    rintro ⟨x⟩
    simp [Submodule.Quotient.quot_mk_eq_mk, IsScalarTower.algebraMap_apply R (S ⧸ P) (T ⧸ Q)]
  exact finrank_top_le_finrank_of_isScalarTower ..

@[deprecated (since := "2026-07-03")] alias inertiaDeg_le_inertiaDeg := inertiaDeg'_le_inertiaDeg'

end DecEq

section absNorm

-- The assumption `Module.Free ℤ` has been replaced by `Infinite`: it should hold
-- automatically in all cases; if not, the corresponding instance should be added.
@[deprecated "Use `Ideal.absNorm_pow_inertiaDeg` instead." (since := "2026-08-14")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inertia/Variante20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inertia/Variante20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeddf4dd3156559032004e267ba77f57a0cddc82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
