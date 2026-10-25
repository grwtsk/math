# coe_nat_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07ae0201-9fae-ded5-ae73-2b317565a237",
  "kind": "theorem",
  "lexical_name": "coe_nat_dvd",
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
  "slug": "coe-nat-dvd--926eeb5afaa77b3b74e1bc6d",
  "source": {
    "blob": "454cec1072af6fd3a05b41eafd027ec6bf59049f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:926eeb5afaa77b3b74e1bc6d0e1700d5e64fbd21ff2223d875536d539f8a1113",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07ae0201-9fae-ded5-ae73-2b317565a237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_nat_dvd {m n : ℕ} : (↑m : ℤ) ∣ ↑n ↔ m ∣ n :=
  ⟨fun ⟨a, ae⟩ =>
    m.eq_zero_or_pos.elim (fun m0 => by simp [m0] at ae; simp [ae, m0]) fun m0l => by
      cases'
        eq_ofNat_of_zero_le
          (@nonneg_of_mul_nonneg_right ℤ _ m a (by simp [ae.symm]) (by simpa using m0l)) with
        k e
      subst a
      exact ⟨k, Int.ofNat.inj ae⟩,
    fun ⟨k, e⟩ => Dvd.intro k <| by rw [e, Int.ofNat_mul]⟩
#align int.coe_nat_dvd Int.coe_nat_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454cec1072af6fd3a05b41eafd027ec6bf59049f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
