# pEquivOnLim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ef63e9b71c30dfc0783edf3567c12dc83edd4623afb2cc26b0846b667267216",
  "kind": "def",
  "lexical_name": "pEquivOnLim",
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
  "slug": "pequivonlim--972e56f428b9f39540f0ac86",
  "source": {
    "blob": "cf03e12e394c7147f5b36c1ae6327e1e67eb896f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 464,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:972e56f428b9f39540f0ac862d3308274ed2b7012d1a391e6068c9a662970caa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ef63e9b71c30dfc0783edf3567c12dc83edd4623afb2cc26b0846b667267216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pEquivOnLim [InverseSystem f]
    (equivLim : F i ≃ limit f i) (H : ∀ x l, (equivLim x).1 l = f l.2.le x) :
    PEquivOn f equivSucc (Iic i) where
  equiv := piEquivLim (pEquivOnGlue hi e).nat equivLim hi
  nat := isNatEquiv_piEquivLim (pEquivOnGlue hi e).nat hi H
  compat hsj hj x := by
    rw [piEquivLim, piSplitLE_lt (hi.succ_lt <| (succ_le_iff_of_not_isMax hj).mp hsj)]
    apply (pEquivOnGlue hi e).compat

end Unique

variable [WellFoundedLT ι] [SuccOrder ι] [InverseSystem f]
  (equivSucc : ∀ i, ¬IsMax i → {e : F i⁺ ≃ F i × X i // ∀ x, (e x).1 = f (le_succ i) x})
  (equivLim : ∀ i, IsSuccPrelimit i → {e : F i ≃ limit f i // ∀ x l, (e x).1 l = f l.2.le x})

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf03e12e394c7147f5b36c1ae6327e1e67eb896f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
