# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb437f46fecc868cfa55b9d265d679ab147b4adb156290eac9693379988492dd",
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
  "slug": "instance--fb08edf26f3ee61ecbd9c921",
  "source": {
    "blob": "92e1c3d8ba6838dfa6cab9db82fe65c462f1bc1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinimalSheffer/Variant4c30d1ce37f4443a9b4c66398059efecea853b99dfa6b2c0ff5f1aaf171219d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb08edf26f3ee61ecbd9c92184062dd8d8bd8b2959b9685458c2e1d1e82e1569",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinimalSheffer/Variant4c30d1ce37f4443a9b4c66398059efecea853b99dfa6b2c0ff5f1aaf171219d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb437f46fecc868cfa55b9d265d679ab147b4adb156290eac9693379988492dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PartialOrder α where
  le a b := aᶜ = a | b
  le_refl a := rfl
  le_trans a b c h₁ h₂ := by
    have h₁' : aᶜ | bᶜ = b := by rw [h₁, comm a, meredith]
    have h₂' : bᶜ | cᶜ = c := by rw [h₂, comm b, meredith]
    have l1 := veroff (a | aᶜ) (a | (aᶜ | bᶜ)) bᶜ
    nth_rw 1 [veroff a, h₁', comm _ b, meredith, comm _ aᶜ, h₁, comm a b, abba] at l1
    have l2 := veroff a bᶜ cᶜ
    rw [l1, h₂', comm _ aᶜ, comm] at l2
    have l3 := veroff (a | c) aᶜ a
    rwa [meredith, l2] at l3
  le_antisymm a b h₁ h₂ := by rw [← compl_compl a, h₁, comm, ← h₂, compl_compl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinimalSheffer/Variant4c30d1ce37f4443a9b4c66398059efecea853b99dfa6b2c0ff5f1aaf171219d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinimalSheffer/Variant4c30d1ce37f4443a9b4c66398059efecea853b99dfa6b2c0ff5f1aaf171219d5.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e1c3d8ba6838dfa6cab9db82fe65c462f1bc1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
