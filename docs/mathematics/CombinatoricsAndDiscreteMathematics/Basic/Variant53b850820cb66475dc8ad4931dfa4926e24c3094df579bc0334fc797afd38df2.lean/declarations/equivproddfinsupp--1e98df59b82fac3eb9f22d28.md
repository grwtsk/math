# equivProdDFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f5ba6aea4cdc1714fe229b401fa27c11de484a3b47c66a7656ed101c38d5e87",
  "kind": "def",
  "lexical_name": "equivProdDFinsupp",
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
  "slug": "equivproddfinsupp--1e98df59b82fac3eb9f22d28",
  "source": {
    "blob": "31d8f5aca42493eb98f77c724c647a1409d650f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1698,
    "line": 1682,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e98df59b82fac3eb9f22d28633943a2100b87ccc7feff5255ee27e9d5d4391e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f5ba6aea4cdc1714fe229b401fa27c11de484a3b47c66a7656ed101c38d5e87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1682–1698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivProdDFinsupp [∀ i, Zero (α i)] : (Π₀ i, α i) ≃ α none × Π₀ i, α (some i)
    where
  toFun f := (f none, comapDomain some (Option.some_injective _) f)
  invFun f := f.2.extendWith f.1
  left_inv f := by
    ext i; cases' i with i
    · rw [extendWith_none]
    · rw [extendWith_some, comapDomain_apply]
  right_inv x := by
    dsimp only
    ext
    · exact extendWith_none x.snd _
    · rw [comapDomain_apply, extendWith_some]
#align dfinsupp.equiv_prod_dfinsupp DFinsupp.equivProdDFinsupp
#align dfinsupp.equiv_prod_dfinsupp_apply DFinsupp.equivProdDFinsupp_apply
#align dfinsupp.equiv_prod_dfinsupp_symm_apply DFinsupp.equivProdDFinsupp_symm_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean#L1682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d8f5aca42493eb98f77c724c647a1409d650f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
