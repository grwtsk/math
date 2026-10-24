# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:065c25007a59dd31a090839579218682bc6a2599bc3bc53c2260bfc97f86460d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3b023fd3caa675a3d81f065d",
  "source": {
    "blob": "1616fc288394be8bd955844dfb9e2c4390fe5cd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b023fd3caa675a3d81f065dd499417bf6e39bb47814c3cc68eaa2e3e1381f07",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:065c25007a59dd31a090839579218682bc6a2599bc3bc53c2260bfc97f86460d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) Finite.to_isCoatomic [PartialOrder α] [OrderTop α] [Finite α] :
    IsCoatomic α := by
  refine IsCoatomic.mk fun b => or_iff_not_imp_left.2 fun ht => ?_
  obtain ⟨c, hc, hmax⟩ :=
    Set.Finite.exists_maximalFor id { x : α | b ≤ x ∧ x ≠ ⊤ } (Set.toFinite _) ⟨b, le_rfl, ht⟩
  refine ⟨c, ⟨hc.2, fun y hcy => ?_⟩, hc.1⟩
  by_contra hyt
  exact not_lt_iff_le_imp_le.2 (hmax ⟨hc.1.trans hcy.le, hyt⟩) hcy

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1616fc288394be8bd955844dfb9e2c4390fe5cd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
