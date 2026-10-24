# equivUnitsEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a23f9a1e4de79d32a6eff9cdab6ec97726d2a78e0164a63ae93b22768fe987c0",
  "kind": "def",
  "lexical_name": "equivUnitsEnd",
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
  "slug": "equivunitsend--d30fe7c89cc2747fadb073f7",
  "source": {
    "blob": "f3d1b12fa35712ad7dd91cc1b167096e985e60da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d30fe7c89cc2747fadb073f7f0994464d29775fa62cf2c94fe09e4429fd5e814",
  "verification": {
    "reference": "docs/verification/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a23f9a1e4de79d32a6eff9cdab6ec97726d2a78e0164a63ae93b22768fe987c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivUnitsEnd : Perm α ≃* Units (Function.End α) where
  toFun e := ⟨⇑e, ⇑e.symm, e.self_comp_symm, e.symm_comp_self⟩
  invFun u :=
    ⟨(u : Function.End α), (↑u⁻¹ : Function.End α), congr_fun u.inv_val, congr_fun u.val_inv⟩
  map_mul' _ _ := rfl

/-- Lift a monoid homomorphism `f : G →* Function.End α` to a monoid homomorphism
`f : G →* Equiv.Perm α`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d1b12fa35712ad7dd91cc1b167096e985e60da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
