# restr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec3b2d95e66144f7485e4c7dac86924505d8d89c2c4b3f8c75f061976b6c557d",
  "kind": "def",
  "lexical_name": "restr",
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
  "slug": "restr--a81024ad6bc91ac3d5b781db",
  "source": {
    "blob": "a2b2a00c76a87ec6e1d861c21016714c5fbd3b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 294,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a81024ad6bc91ac3d5b781dba05e98ea83f609661ac7efb2fefdeb5e4ebb8705",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec3b2d95e66144f7485e4c7dac86924505d8d89c2c4b3f8c75f061976b6c557d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restr {k n : ℕ} (f : MultilinearMap R (fun _ : Fin n => M') M₂) (s : Finset (Fin n))
    (hk : #s = k) (z : M') : MultilinearMap R (fun _ : Fin k => M') M₂ where
  toFun v := f fun j => if h : j ∈ s then v ((s.orderIsoOfFin hk).symm ⟨j, h⟩) else z
  /- Porting note: The proofs of the following two lemmas used to only use `erw` followed by `simp`,
  but it seems `erw` no longer unfolds or unifies well enough to work without more help. -/
  map_update_add' v i x y := by
    erw [dite_comp_equiv_update (s.orderIsoOfFin hk).toEquiv,
      dite_comp_equiv_update (s.orderIsoOfFin hk).toEquiv,
      dite_comp_equiv_update (s.orderIsoOfFin hk).toEquiv]
    simp
  map_update_smul' v i c x := by
    erw [dite_comp_equiv_update (s.orderIsoOfFin hk).toEquiv,
      dite_comp_equiv_update (s.orderIsoOfFin hk).toEquiv]
    simp

/-- In the specific case of multilinear maps on spaces indexed by `Fin (n+1)`, where one can build
an element of `∀ (i : Fin (n+1)), M i` using `cons`, one can express directly the additivity of a
multilinear map along the first variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b2a00c76a87ec6e1d861c21016714c5fbd3b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
