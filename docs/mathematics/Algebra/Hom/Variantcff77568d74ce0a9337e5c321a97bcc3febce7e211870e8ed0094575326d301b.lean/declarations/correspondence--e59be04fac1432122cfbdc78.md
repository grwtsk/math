# correspondence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:298b2826c5301f3c42f2be40fd3427882c465996302788b3466f693b8e83de01",
  "kind": "def",
  "lexical_name": "correspondence",
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
  "slug": "correspondence--e59be04fac1432122cfbdc78",
  "source": {
    "blob": "dad8f892e37ee4b5f079e7d683999c172434f64b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 137,
    "path": "GRWTSK/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e59be04fac1432122cfbdc78c3c8f0780cc0ea82a26489003469c84da828cff8",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:298b2826c5301f3c42f2be40fd3427882c465996302788b3466f693b8e83de01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def correspondence {c : RingCon M} : Set.Ici c ≃o RingCon c.Quotient where
  toFun d := d.1.mapGen c.mk'
  invFun d := ⟨d.comap (mk' c), c.ker_mk'_eq.symm.trans_le <| comap_bot c.mk' ▸ comap_mono bot_le⟩
  left_inv d := by
    ext
    simp only [comap_rel]
    rw [mapGen_apply_apply_of_surjective c.mk' (c.ker_mk'_eq.trans_le d.2) c.mk'_surjective]
  right_inv d := by
    ext x y
    simp only
    obtain ⟨x, rfl⟩ := c.mk'_surjective x
    obtain ⟨y, rfl⟩ := c.mk'_surjective y
    rw [mapGen_apply_apply_of_surjective _ (comap_bot c.mk' ▸ comap_mono bot_le) c.mk'_surjective,
      comap_rel]
  map_rel_iff' {s t} := by
    simp only [Equiv.coe_fn_mk, le_def, c.mk'_surjective.forall, ← Subtype.coe_le_coe]
    simp_rw [mapGen_apply_apply_of_surjective c.mk' (c.ker_mk'_eq.trans_le s.2) c.mk'_surjective,
      mapGen_apply_apply_of_surjective c.mk' (c.ker_mk'_eq.trans_le t.2) c.mk'_surjective]

variable (c : RingCon M)

variable (x y : M)

variable (f : M →+* P)

/-- The homomorphism on the quotient of a ring by a congruence relation `c`
induced by a homomorphism constant on the equivalence classes of `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dad8f892e37ee4b5f079e7d683999c172434f64b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
