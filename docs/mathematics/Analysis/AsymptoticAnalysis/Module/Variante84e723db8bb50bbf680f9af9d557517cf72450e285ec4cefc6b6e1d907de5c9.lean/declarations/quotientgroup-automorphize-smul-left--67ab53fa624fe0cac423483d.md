# QuotientGroup.automorphize_smul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14362e97-d4e8-0f97-a295-2323a957dcaa",
  "kind": "lemma",
  "lexical_name": "QuotientGroup.automorphize_smul_left",
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
  "slug": "quotientgroup-automorphize-smul-left--67ab53fa624fe0cac423483d",
  "source": {
    "blob": "343ee70589c17a456ad74982b9106ae83dc12b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 261,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ab53fa624fe0cac423483defc875690aaa6641ac9ea87d7e43c114a13c9458",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14362e97-d4e8-0f97-a295-2323a957dcaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuotientGroup.automorphize_smul_left (f : G → M) (g : G ⧸ Γ → R) :
    (QuotientGroup.automorphize ((g ∘ (@Quotient.mk' _ (_)) : G → R) • f) : G ⧸ Γ → M)
      = g • (QuotientGroup.automorphize f : G ⧸ Γ → M) :=
  MulAction.automorphize_smul_left f g

end

section

variable {G : Type*} [AddGroup G] {Γ : AddSubgroup G}

/-- Automorphization of a function into an `R`-`Module` distributes, that is, commutes with the
`R`-scalar multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `343ee70589c17a456ad74982b9106ae83dc12b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
