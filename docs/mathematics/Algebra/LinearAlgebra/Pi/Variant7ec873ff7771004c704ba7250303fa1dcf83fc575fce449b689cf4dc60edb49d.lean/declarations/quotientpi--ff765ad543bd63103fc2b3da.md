# quotientPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c89ac155e4277c7a70b75930b4bfc19e1d06514f2c91ea65d20d94bc5514c063",
  "kind": "def",
  "lexical_name": "quotientPi",
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
  "slug": "quotientpi--ff765ad543bd63103fc2b3da",
  "source": {
    "blob": "ab486faedb451990a50276d5993a11187996ec48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff765ad543bd63103fc2b3daf9500f01ce122e53e2b90b5fcd25c7ef0bcd1229",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c89ac155e4277c7a70b75930b4bfc19e1d06514f2c91ea65d20d94bc5514c063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientPi [Fintype ι] [DecidableEq ι] (p : ∀ i, Submodule R (Ms i)) :
    ((∀ i, Ms i) ⧸ pi Set.univ p) ≃ₗ[R] ∀ i, Ms i ⧸ p i where
  toFun := toFun p
  invFun := invFun p
  map_add' := map_add p
  map_smul' := quotientPi_aux.map_smul p
  left_inv := left_inv p
  right_inv := right_inv p

end Submodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab486faedb451990a50276d5993a11187996ec48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
