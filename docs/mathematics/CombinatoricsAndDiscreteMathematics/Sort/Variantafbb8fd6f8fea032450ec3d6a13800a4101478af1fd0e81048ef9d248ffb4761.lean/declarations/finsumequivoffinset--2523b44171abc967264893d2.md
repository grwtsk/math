# finSumEquivOfFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f4761a3ceadb631a5bfb00162e8bd81d5cbd82a83d11b22df1bcdac514b5ebe",
  "kind": "def",
  "lexical_name": "finSumEquivOfFinset",
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
  "slug": "finsumequivoffinset--2523b44171abc967264893d2",
  "source": {
    "blob": "75fbd4df9bf5c7e887e42e2986ef59c193fb5389",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2523b44171abc967264893d2285b254a8af47978aef9862583999485ec96bc6a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f4761a3ceadb631a5bfb00162e8bd81d5cbd82a83d11b22df1bcdac514b5ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finSumEquivOfFinset (hm : #s = m) (hn : #sᶜ = n) : Fin m ⊕ Fin n ≃ α :=
  calc
    Fin m ⊕ Fin n ≃ (s : Set α) ⊕ (sᶜ : Set α) :=
      Equiv.sumCongr (s.orderIsoOfFin hm).toEquiv <|
        (sᶜ.orderIsoOfFin hn).toEquiv.trans <| Equiv.setCongr s.coe_compl
    _ ≃ α := Equiv.Set.sumCompl _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75fbd4df9bf5c7e887e42e2986ef59c193fb5389` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
