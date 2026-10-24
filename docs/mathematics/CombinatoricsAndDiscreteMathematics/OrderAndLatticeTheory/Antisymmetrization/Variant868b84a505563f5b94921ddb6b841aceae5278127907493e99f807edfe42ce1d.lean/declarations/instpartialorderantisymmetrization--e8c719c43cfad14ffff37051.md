# instPartialOrderAntisymmetrization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a36e213ec34c8353ea307892fbc5b75db11574e3c40a4c7827e26156faa9ded",
  "kind": "instance",
  "lexical_name": "instPartialOrderAntisymmetrization",
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
  "slug": "instpartialorderantisymmetrization--e8c719c43cfad14ffff37051",
  "source": {
    "blob": "321146824760e038348ab6c33bc5396a29b297c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8c719c43cfad14ffff370510a140cd7fcd747b0f89f01894a475697b1a7fb6b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a36e213ec34c8353ea307892fbc5b75db11574e3c40a4c7827e26156faa9ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPartialOrderAntisymmetrization : PartialOrder (Antisymmetrization α (· ≤ ·)) where
  le :=
    Quotient.lift₂ (· ≤ ·) fun (_ _ _ _ : α) h₁ h₂ =>
      propext ⟨fun h => h₁.2.trans <| h.trans h₂.1, fun h => h₁.1.trans <| h.trans h₂.2⟩
  lt :=
    Quotient.lift₂ (· < ·) fun (_ _ _ _ : α) h₁ h₂ =>
      propext ⟨fun h => h₁.2.trans_lt <| h.trans_le h₂.1, fun h =>
                h₁.1.trans_lt <| h.trans_le h₂.2⟩
  le_refl a := Quotient.inductionOn' a le_refl
  le_trans a b c := Quotient.inductionOn₃' a b c fun _ _ _ => le_trans
  lt_iff_le_not_le a b := Quotient.inductionOn₂' a b fun _ _ => lt_iff_le_not_le
  le_antisymm a b := Quotient.inductionOn₂' a b fun _ _ hab hba => Quotient.sound' ⟨hab, hba⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `321146824760e038348ab6c33bc5396a29b297c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
