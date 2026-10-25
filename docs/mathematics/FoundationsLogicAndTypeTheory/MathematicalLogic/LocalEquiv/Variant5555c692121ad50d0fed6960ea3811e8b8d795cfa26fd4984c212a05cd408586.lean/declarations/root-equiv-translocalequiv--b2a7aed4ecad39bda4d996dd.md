# _root_.Equiv.transLocalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53f5792ee4b82d82d0e19114ab1bc91c145bb21c3513a7b8872031e71d7a3654",
  "kind": "def",
  "lexical_name": "_root_.Equiv.transLocalEquiv",
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
  "slug": "root-equiv-translocalequiv--b2a7aed4ecad39bda4d996dd",
  "source": {
    "blob": "d40af3c1fe472e2d9ebd5b8328795a4b85a17210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 798,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2a7aed4ecad39bda4d996dddebd7f6867a91cb4f8404fa0a60192525e0de280",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53f5792ee4b82d82d0e19114ab1bc91c145bb21c3513a7b8872031e71d7a3654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Equiv.transLocalEquiv (e : α ≃ β) : LocalEquiv α γ :=
  (e.toLocalEquiv.trans e').copy _ rfl _ rfl (e ⁻¹' e'.source) (univ_inter _) e'.target
    (inter_univ _)
#align equiv.trans_local_equiv Equiv.transLocalEquiv
#align equiv.trans_local_equiv_target Equiv.transLocalEquiv_target
#align equiv.trans_local_equiv_apply Equiv.transLocalEquiv_apply
#align equiv.trans_local_equiv_source Equiv.transLocalEquiv_source
#align equiv.trans_local_equiv_symm_apply Equiv.transLocalEquiv_symm_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40af3c1fe472e2d9ebd5b8328795a4b85a17210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
