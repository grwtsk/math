# parameterEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9115686a907b3f59e112738435f8461946455d1840ff52b859986397a261f546",
  "kind": "def",
  "lexical_name": "parameterEquiv",
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
  "slug": "parameterequiv--3c83cb38d72d7eb2ccab32b3",
  "source": {
    "blob": "f304f59fc241efc740cf0c1dbeef9881538c2bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c83cb38d72d7eb2ccab32b310550dd6636f0b97c7c892c411a9f2946b8a0a1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9115686a907b3f59e112738435f8461946455d1840ff52b859986397a261f546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parameterEquiv (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥)
    (d j h : A) (hdj : d * j = 1) : Branch I d h ≃ I where
  toFun p := ⟨p.val.2, p.property.2.1⟩
  invFun e := ⟨(iterate j h e.val N, e.val),
    iterate_mem I j h e.val e.property N, e.property,
    iterate_solves_ideal I N hI d j h e.val hdj e.property⟩
  left_inv p := by
    apply Subtype.ext
    apply Prod.ext
    · exact (solution_eq_iterate I N hI d j h p.val.2 p.val.1 hdj
        p.property.2.1 p.property.1 p.property.2.2).symm
    · rfl
  right_inv e := rfl

/-- Ideal-preserving base change of deformation sets, with d and h mapped too. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f304f59fc241efc740cf0c1dbeef9881538c2bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
