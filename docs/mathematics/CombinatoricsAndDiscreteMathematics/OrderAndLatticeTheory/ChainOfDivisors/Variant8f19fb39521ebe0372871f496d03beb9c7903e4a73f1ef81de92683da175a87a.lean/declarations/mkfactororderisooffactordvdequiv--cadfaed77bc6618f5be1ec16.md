# mkFactorOrderIsoOfFactorDvdEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e1ff4184e5977587de0857128704a2a16bf7e83837877f1c6d17cf3c0a7dd2d",
  "kind": "def",
  "lexical_name": "mkFactorOrderIsoOfFactorDvdEquiv",
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
  "slug": "mkfactororderisooffactordvdequiv--cadfaed77bc6618f5be1ec16",
  "source": {
    "blob": "ce0ff1cd269a361b949443ad25be5c6e6d1d8f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 361,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cadfaed77bc6618f5be1ec160c4059a8933138bfd3a6a88add8f30f20a67f5a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e1ff4184e5977587de0857128704a2a16bf7e83837877f1c6d17cf3c0a7dd2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFactorOrderIsoOfFactorDvdEquiv {m : M} {n : N} {d : { l : M // l ∣ m } ≃ { l : N // l ∣ n }}
    (hd : ∀ l l', (d l : N) ∣ d l' ↔ (l : M) ∣ (l' : M)) :
    Set.Iic (Associates.mk m) ≃o Set.Iic (Associates.mk n)
    where
  toFun l :=
    ⟨Associates.mk
        (d
          ⟨associatesEquivOfUniqueUnits ↑l, by
            obtain ⟨x, hx⟩ := l
            rw [Subtype.coe_mk, associatesEquivOfUniqueUnits_apply, out_dvd_iff]
            exact hx⟩),
      mk_le_mk_iff_dvd_iff.mpr (Subtype.prop (d ⟨associatesEquivOfUniqueUnits ↑l, _⟩))⟩
  invFun l :=
    ⟨Associates.mk
        (d.symm
          ⟨associatesEquivOfUniqueUnits ↑l, by
            obtain ⟨x, hx⟩ := l
            rw [Subtype.coe_mk, associatesEquivOfUniqueUnits_apply, out_dvd_iff]
            exact hx⟩),
      mk_le_mk_iff_dvd_iff.mpr (Subtype.prop (d.symm ⟨associatesEquivOfUniqueUnits ↑l, _⟩))⟩
  left_inv := fun ⟨l, hl⟩ => by
    simp only [Subtype.coe_eta, Equiv.symm_apply_apply, Subtype.coe_mk,
      associatesEquivOfUniqueUnits_apply, mk_out, out_mk, normalize_eq]
  right_inv := fun ⟨l, hl⟩ => by
    simp only [Subtype.coe_eta, Equiv.apply_symm_apply, Subtype.coe_mk,
      associatesEquivOfUniqueUnits_apply, out_mk, normalize_eq, mk_out]
  map_rel_iff' := by
    rintro ⟨a, ha⟩ ⟨b, hb⟩
    simp only [Equiv.coe_fn_mk, Subtype.mk_le_mk, Associates.mk_le_mk_iff_dvd_iff, hd,
        Subtype.coe_mk, associatesEquivOfUniqueUnits_apply, out_dvd_iff, mk_out]
#align mk_factor_order_iso_of_factor_dvd_equiv mkFactorOrderIsoOfFactorDvdEquiv

variable [UniqueFactorizationMonoid M] [UniqueFactorizationMonoid N] [DecidableEq M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0ff1cd269a361b949443ad25be5c6e6d1d8f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
