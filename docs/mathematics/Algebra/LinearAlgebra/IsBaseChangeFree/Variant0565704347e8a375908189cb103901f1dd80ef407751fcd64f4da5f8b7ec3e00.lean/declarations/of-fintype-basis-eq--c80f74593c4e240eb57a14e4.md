# of_fintype_basis_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8913e64a-a327-ed68-0d70-d601e26384ce",
  "kind": "theorem",
  "lexical_name": "of_fintype_basis_eq",
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
  "slug": "of-fintype-basis-eq--c80f74593c4e240eb57a14e4",
  "source": {
    "blob": "2793106359ae617f8600e0fee78e5b8ee0ed4271",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c80f74593c4e240eb57a14e4f9036886dd73248c91d5ca6020a9f45ca18f5d58",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8913e64a-a327-ed68-0d70-d601e26384ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_fintype_basis_eq [Fintype ι] {a : ι → A} {v : V} :
    (Fintype.linearCombination A b) a = v ↔
      algebraMap A R ∘ a = b.equivFun v := by
  rw [← LinearEquiv.symm_apply_eq]
  rw [Fintype.linearCombination_apply, b.equivFun_symm_apply]
  simp

end IsBaseChange

end underring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2793106359ae617f8600e0fee78e5b8ee0ed4271` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
