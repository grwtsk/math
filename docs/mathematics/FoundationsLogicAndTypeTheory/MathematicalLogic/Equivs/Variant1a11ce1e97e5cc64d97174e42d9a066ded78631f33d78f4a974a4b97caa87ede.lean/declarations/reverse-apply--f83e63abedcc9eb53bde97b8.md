# reverse_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:839e1667-b8cb-520e-d054-2145fc039de4",
  "kind": "theorem",
  "lexical_name": "reverse_apply",
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
  "slug": "reverse-apply--f83e63abedcc9eb53bde97b8",
  "source": {
    "blob": "15329a3b19f4ecf7bb8a5e1b32b6d009f5538726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f83e63abedcc9eb53bde97b862d67a4072cb386ebe79d520821723f7a2f7ff52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:839e1667-b8cb-520e-d054-2145fc039de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reverse_apply (x : CliffordAlgebra Q) : x.reverse = x := by
  induction x using CliffordAlgebra.induction with
  | algebraMap r => exact reverse.commutes _
  | ι x => rw [reverse_ι]
  | mul x₁ x₂ hx₁ hx₂ => rw [reverse.map_mul, mul_comm, hx₁, hx₂]
  | add x₁ x₂ hx₁ hx₂ => rw [reverse.map_add, hx₁, hx₂]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15329a3b19f4ecf7bb8a5e1b32b6d009f5538726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
