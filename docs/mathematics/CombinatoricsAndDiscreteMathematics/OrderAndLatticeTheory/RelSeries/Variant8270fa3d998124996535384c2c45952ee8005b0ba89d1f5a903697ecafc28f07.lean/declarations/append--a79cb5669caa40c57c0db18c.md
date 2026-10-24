# append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03d6d34e0d8583819dc0a98189a40eaf62ff1e69fb59a6bac563671aeabc3c33",
  "kind": "def",
  "lexical_name": "append",
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
  "slug": "append--a79cb5669caa40c57c0db18c",
  "source": {
    "blob": "8896971211c230ef2e4e80551ee4ee3f216674b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a79cb5669caa40c57c0db18cdd77e082770e3d09f6e61aa110bb91e2a2a23111",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03d6d34e0d8583819dc0a98189a40eaf62ff1e69fb59a6bac563671aeabc3c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def append (p q : RelSeries r) (connect : r p.last q.head) : RelSeries r where
  length := p.length + q.length + 1
  toFun := Fin.append p q ∘ Fin.cast (by omega)
  step i := by
    obtain hi | rfl | hi :=
      lt_trichotomy i (Fin.castLE (by omega) (Fin.last _ : Fin (p.length + 1)))
    · convert p.step ⟨i.1, hi⟩ <;> convert Fin.append_left p q _ <;> rfl
    · convert connect
      · convert Fin.append_left p q _
      · convert Fin.append_right p q _; rfl
    · set x := _; set y := _
      change r (Fin.append p q x) (Fin.append p q y)
      have hx : x = Fin.natAdd _ ⟨i - (p.length + 1), Nat.sub_lt_left_of_lt_add hi <|
          i.2.trans <| by omega⟩ := by
        ext; dsimp [x, y]; rw [Nat.add_sub_cancel']; exact hi
      have hy : y = Fin.natAdd _ ⟨i - p.length, Nat.sub_lt_left_of_lt_add (le_of_lt hi)
          (by exact i.2)⟩ := by
        ext
        dsimp
        conv_rhs => rw [Nat.add_comm p.length 1, add_assoc,
          Nat.add_sub_cancel' <| le_of_lt (show p.length < i.1 from hi), add_comm]
        rfl
      rw [hx, Fin.append_right, hy, Fin.append_right]
      convert q.step ⟨i - (p.length + 1), Nat.sub_lt_left_of_lt_add hi <| by omega⟩
      rw [Fin.succ_mk, Nat.sub_eq_iff_eq_add (le_of_lt hi : p.length ≤ i),
        Nat.add_assoc _ 1, add_comm 1, Nat.sub_add_cancel]
      exact hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8896971211c230ef2e4e80551ee4ee3f216674b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
