# restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc0978f764ea982338c14708b877445c0dd17594675a93c7aae7882660315b82",
  "kind": "def",
  "lexical_name": "restrict",
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
  "slug": "restrict--a3fbe1f36ebbe83f91e92522",
  "source": {
    "blob": "689f1aaa71f9b3fbcaa33ccd44dfc08d6965787a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3fbe1f36ebbe83f91e92522b61a0c7e642f64c6fd9b852fb764aac578ddd46f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc0978f764ea982338c14708b877445c0dd17594675a93c7aae7882660315b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrict (S : Sublocale X) : FrameHom X S where
  toFun x := sInf {s : S | x ≤ s}
  map_inf' a b := by
    change Sublocale.restrictAux S (a ⊓ b) = Sublocale.restrictAux S a ⊓ Sublocale.restrictAux S b
    refine eq_of_forall_ge_iff (fun s ↦ Iff.symm ?_)
    calc
      _ ↔ S.restrictAux a ≤ S.restrictAux b ⇨ s := by simp
      _ ↔ S.restrictAux b ≤ a ⇨ s := by rw [S.giAux.gc.le_iff_le, @le_himp_comm, coe_himp]
      _ ↔ b ≤ a ⇨ s := by
        set c : S := ⟨a ⇨ s, S.himp_mem s.coe_prop⟩
        change Sublocale.restrictAux S b ≤ c.val ↔ b ≤ c
        rw [S.giAux.u_le_u_iff, S.giAux.gc.le_iff_le]
      _ ↔ S.restrictAux (a ⊓ b) ≤ s := by simp [inf_comm, S.giAux.gc.le_iff_le]
  map_sSup' s := by
    change Sublocale.restrictAux S (sSup s) = _
    rw [S.giAux.gc.l_sSup, sSup_image]
    rfl
  map_top' := by
    refine le_antisymm le_top ?_
    change _ ≤ restrictAux S ⊤
    rw [← Subtype.coe_le_coe, S.giAux.gc.u_top]
    simp [restrictAux, sInf]

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- The restriction corresponding to a sublocale forms a Galois insertion with the forgetful map
from the sublocale to the original locale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689f1aaa71f9b3fbcaa33ccd44dfc08d6965787a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
