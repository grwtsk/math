# actualPhysicalPrimitive_fourth_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00afd051-342f-eba3-0516-6a644c8fa998",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPrimitive_fourth_eq_kernel",
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
  "slug": "actualphysicalprimitive-fourth-eq-kernel--232b8bd7d7cf3029ab404035",
  "source": {
    "blob": "34b77726cc9bfc40870af79ccae07d5f7d6d608f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 645,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variante71c075718613d108f1e01cffdb52d57905eb5936241232013d8b333419e35ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:232b8bd7d7cf3029ab40403503de907cb96e786fe2215a39e8241e42d38eef99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variante71c075718613d108f1e01cffdb52d57905eb5936241232013d8b333419e35ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00afd051-342f-eba3-0516-6a644c8fa998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPrimitive_fourth_eq_kernel {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (deriv (deriv (actualPhysicalPrimitive A)))) y = actualPhysicalKernel A y := by
  have hd : deriv (deriv (actualPhysicalPrimitive A)) = actualPhysicalWeight A :=
    funext (actualPhysicalPrimitive_second_eq_weight hA)
  rw [hd]
  rfl

/-- Fourth derivative of the original source primitive on the actual positive birth cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variante71c075718613d108f1e01cffdb52d57905eb5936241232013d8b333419e35ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variante71c075718613d108f1e01cffdb52d57905eb5936241232013d8b333419e35ba.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b77726cc9bfc40870af79ccae07d5f7d6d608f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
