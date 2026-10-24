# conj_smul_range_ofSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b800fc1f-4a10-3551-3c95-81b873d4946e",
  "kind": "theorem",
  "lexical_name": "conj_smul_range_ofSubtype",
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
  "slug": "conj-smul-range-ofsubtype--bc89e665122e88c3b4c0c0a7",
  "source": {
    "blob": "6e3216d0813d5379f769dc177fcf5d83d9e1837f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 450,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc89e665122e88c3b4c0c0a723bfa369987487c94df9ebfdf16bcc5b596e8f57",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b800fc1f-4a10-3551-3c95-81b873d4946e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conj_smul_range_ofSubtype (s : Finset α) (g : alternatingGroup α) :
    MulAut.conj g • (ofSubtype s).range = (ofSubtype (g • s)).range := by
  ext k
  simp_rw [mem_pointwise_smul_iff_inv_smul_mem, mem_range_ofSubtype_iff, ← map_inv,
    MulAut.smul_def, ← ConjAct.toConjAct_smul_eq_mulAut_conj, ConjAct.coe_smul]
  simp [support_conj_eq_smul_support, Finset.subset_smul_finset_iff, Subgroup.smul_def]

end alternatingGroup

namespace Equiv.Perm

open Subgroup Group

/-- The alternating group is the only subgroup of index 2 of the permutation group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3216d0813d5379f769dc177fcf5d83d9e1837f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
