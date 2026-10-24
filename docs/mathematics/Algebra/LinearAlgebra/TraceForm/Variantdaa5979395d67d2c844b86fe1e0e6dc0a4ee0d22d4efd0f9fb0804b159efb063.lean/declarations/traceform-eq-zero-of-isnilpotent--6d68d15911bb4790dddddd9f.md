# traceForm_eq_zero_of_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b56ff9c5-351f-35f7-7269-8a7a70cada77",
  "kind": "lemma",
  "lexical_name": "traceForm_eq_zero_of_isNilpotent",
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
  "slug": "traceform-eq-zero-of-isnilpotent--6d68d15911bb4790dddddd9f",
  "source": {
    "blob": "91d80465789ad234c4fed4a843899231d82f8a46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d68d15911bb4790dddddd9f2a046a89dc2b08ae7c06eaca9ef2a73482ad8f71",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b56ff9c5-351f-35f7-7269-8a7a70cada77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma traceForm_eq_zero_of_isNilpotent [IsReduced R] [IsNilpotent L M] :
    traceForm R L M = 0 := by
  ext x y
  simp only [traceForm_apply_apply, LinearMap.zero_apply, ← isNilpotent_iff_eq_zero]
  apply LinearMap.isNilpotent_trace_of_isNilpotent
  exact isNilpotent_toEnd_of_isNilpotent₂ R L M x y

open scoped TensorProduct in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d80465789ad234c4fed4a843899231d82f8a46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
