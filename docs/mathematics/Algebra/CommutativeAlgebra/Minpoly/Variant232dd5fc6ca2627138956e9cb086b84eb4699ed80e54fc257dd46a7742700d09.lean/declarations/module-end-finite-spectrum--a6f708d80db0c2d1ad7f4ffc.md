# Module.End.finite_spectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:669685c2-c3d7-a9ed-0f56-762b03724417",
  "kind": "theorem",
  "lexical_name": "Module.End.finite_spectrum",
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
  "slug": "module-end-finite-spectrum--a6f708d80db0c2d1ad7f4ffc",
  "source": {
    "blob": "b4b1bb41034abc0fb395953ff8b23760af0b86fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 146,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant232dd5fc6ca2627138956e9cb086b84eb4699ed80e54fc257dd46a7742700d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6f708d80db0c2d1ad7f4ffc9970a4b6c086b123fe56ea6bca7a1887f74b86a7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variant232dd5fc6ca2627138956e9cb086b84eb4699ed80e54fc257dd46a7742700d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:669685c2-c3d7-a9ed-0f56-762b03724417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.End.finite_spectrum {K : Type v} {V : Type w} [Field K] [AddCommGroup V]
    [Module K V] [FiniteDimensional K V] (f : Module.End K V) :
    Set.Finite (spectrum K f) := by
  convert! f.finite_hasEigenvalue using 1
  ext x
  exact Module.End.hasEigenvalue_iff_mem_spectrum.symm

variable {n R : Type*} [Field R] [Fintype n] [DecidableEq n]

/-- An n x n matrix over a field has a finite spectrum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variant232dd5fc6ca2627138956e9cb086b84eb4699ed80e54fc257dd46a7742700d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant232dd5fc6ca2627138956e9cb086b84eb4699ed80e54fc257dd46a7742700d09.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b1bb41034abc0fb395953ff8b23760af0b86fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
