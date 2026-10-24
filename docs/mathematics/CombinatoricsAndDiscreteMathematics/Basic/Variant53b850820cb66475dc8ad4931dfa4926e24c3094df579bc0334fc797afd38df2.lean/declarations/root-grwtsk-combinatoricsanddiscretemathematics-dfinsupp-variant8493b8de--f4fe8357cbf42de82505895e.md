# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.DFinsupp.Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.dfinsupp_sumAddHom_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3896847-b38a-bad6-3ad8-abd82d0e590a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.DFinsupp.Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.dfinsupp_sumAddHom_mem",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-dfinsupp-variant8493b8de--f4fe8357cbf42de82505895e",
  "source": {
    "blob": "31d8f5aca42493eb98f77c724c647a1409d650f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1960,
    "line": 1950,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4fe8357cbf42de82505895ead32d2425df12b946f3ef2bdb8b8dce1278cdab9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3896847-b38a-bad6-3ad8-abd82d0e590a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1950–1960.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.DFinsupp.Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.dfinsupp_sumAddHom_mem [∀ i, AddZeroClass (β i)] [AddCommMonoid γ] {S : Type*}
    [SetLike S γ] [AddSubmonoidClass S γ] (s : S) (f : Π₀ i, β i) (g : ∀ i, β i →+ γ)
    (h : ∀ c, f c ≠ 0 → g c (f c) ∈ s) : DFinsupp.sumAddHom g f ∈ s := by
  classical
    rw [DFinsupp.sumAddHom_apply]
    exact dfinsupp_sum_mem s f (g ·) h
#align dfinsupp_sum_add_hom_mem dfinsupp_sumAddHom_mem

/-- The supremum of a family of commutative additive submonoids is equal to the range of
`DFinsupp.sumAddHom`; that is, every element in the `iSup` can be produced from taking a finite
number of non-zero elements of `S i`, coercing them to `γ`, and summing them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean#L1950).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d8f5aca42493eb98f77c724c647a1409d650f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
