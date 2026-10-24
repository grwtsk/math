# equivIccQuot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be7f01520e3137bcec7022ee58534e4f535abff479561ebeb860643ed9828fe2",
  "kind": "def",
  "lexical_name": "equivIccQuot",
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
  "slug": "equiviccquot--6bb275bcdc3523e106240013",
  "source": {
    "blob": "f100dfac99db57c27650b5a343da01771e2a7417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 579,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bb275bcdc3523e106240013c1003a9a3f1ae00e10a790d471909493b6ee148f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be7f01520e3137bcec7022ee58534e4f535abff479561ebeb860643ed9828fe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivIccQuot : 𝕋 ≃ Quot (EndpointIdent p a) where
  toFun x := Quot.mk _ <| inclusion Ico_subset_Icc_self (equivIco _ _ x)
  invFun x :=
    Quot.liftOn x (↑) <| by
      rintro _ _ ⟨_⟩
      exact (coe_add_period p a).symm
  left_inv := (equivIco p a).symm_apply_apply
  right_inv :=
    Quot.ind <| by
      rintro ⟨x, hx⟩
      rcases ne_or_eq x (a + p) with (h | rfl)
      · revert x
        dsimp only
        intro x hx h
        congr
        ext1
        apply congr_arg Subtype.val ((equivIco p a).right_inv ⟨x, hx.1, hx.2.lt_of_ne h⟩)
      · rw [← Quot.sound EndpointIdent.mk]
        dsimp only
        congr
        ext1
        apply congr_arg Subtype.val
          ((equivIco p a).right_inv ⟨a, le_refl a, lt_add_of_pos_right a hp.out⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f100dfac99db57c27650b5a343da01771e2a7417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
