# infIccOrderIsoIccSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b0fbc66d3a8da897b2150049a4016d09fbec469743c0e923e520d4ae7d5f3e8",
  "kind": "def",
  "lexical_name": "infIccOrderIsoIccSup",
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
  "slug": "inficcorderisoiccsup--49c1565456dff205c6dd4ac0",
  "source": {
    "blob": "932a3e672f9103387ef015400b5f7b6ddebc70e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 249,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Varianta8a9f459c5d6109c4729f153b0465eec9bc0ce005217012617ec1a56df3226b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49c1565456dff205c6dd4ac001a7390ffebfdd716f04ab665398297d32d3cfa7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Varianta8a9f459c5d6109c4729f153b0465eec9bc0ce005217012617ec1a56df3226b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b0fbc66d3a8da897b2150049a4016d09fbec469743c0e923e520d4ae7d5f3e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def infIccOrderIsoIccSup (a b : α) : Set.Icc (a ⊓ b) a ≃o Set.Icc b (a ⊔ b) where
  toFun x := ⟨x ⊔ b, ⟨le_sup_right, sup_le_sup_right x.prop.2 b⟩⟩
  invFun x := ⟨a ⊓ x, ⟨inf_le_inf_left a x.prop.1, inf_le_left⟩⟩
  left_inv x :=
    Subtype.ext
      (by
        change a ⊓ (↑x ⊔ b) = ↑x
        rw [sup_comm, ← inf_sup_assoc_of_le _ x.prop.2, sup_eq_right.2 x.prop.1])
  right_inv x :=
    Subtype.ext
      (by
        change a ⊓ ↑x ⊔ b = ↑x
        rw [inf_comm, inf_sup_assoc_of_le _ x.prop.1, inf_eq_left.2 x.prop.2])
  map_rel_iff' {x y} := by
    simp only [Subtype.mk_le_mk, Equiv.coe_fn_mk, le_sup_right]
    rw [← Subtype.coe_le_coe]
    refine ⟨fun h => ?_, fun h => sup_le_sup_right h _⟩
    rw [← sup_eq_right.2 x.prop.1, inf_sup_assoc_of_le _ x.prop.2, sup_comm, ←
      sup_eq_right.2 y.prop.1, inf_sup_assoc_of_le _ y.prop.2, sup_comm b]
    exact inf_le_inf_left _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Varianta8a9f459c5d6109c4729f153b0465eec9bc0ce005217012617ec1a56df3226b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Varianta8a9f459c5d6109c4729f153b0465eec9bc0ce005217012617ec1a56df3226b7.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `932a3e672f9103387ef015400b5f7b6ddebc70e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
