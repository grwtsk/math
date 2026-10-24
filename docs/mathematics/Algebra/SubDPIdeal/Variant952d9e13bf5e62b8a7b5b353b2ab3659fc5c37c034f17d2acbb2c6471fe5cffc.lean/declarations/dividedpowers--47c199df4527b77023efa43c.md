# dividedPowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58986ceffd0ee28131f3ac5fb087cac46fa3f5f728cbaef0f14493e14c05c2e6",
  "kind": "def",
  "lexical_name": "dividedPowers",
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
  "slug": "dividedpowers--47c199df4527b77023efa43c",
  "source": {
    "blob": "d48853bce2d1873c7253498403051f12d1c18c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 108,
    "path": "GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47c199df4527b77023efa43c94837fdd1ec0260de007cdf9218aa6d9511ddbb0",
  "verification": {
    "reference": "docs/verification/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58986ceffd0ee28131f3ac5fb087cac46fa3f5f728cbaef0f14493e14c05c2e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dividedPowers {J : Ideal A} (hJ : IsSubDPIdeal hI J) [∀ x, Decidable (x ∈ J)] :
    DividedPowers J where
  dpow n x        := if x ∈ J then hI.dpow n x else 0
  dpow_null hx    := by simp [ite_eq_right hx]
  dpow_zero hx    := by simp [ite_eq_left hx, hI.dpow_zero (hJ.isSubideal hx)]
  dpow_one hx     := by simp [ite_eq_left hx, hI.dpow_one (hJ.isSubideal hx)]
  dpow_mem hn hx  := by simp [ite_eq_left hx, hJ.dpow_mem _ hn hx]
  dpow_add hx hy  := by
    simp_rw [ite_eq_left hx, ite_eq_left hy, ite_eq_left (Ideal.add_mem J hx hy),
      hI.dpow_add (hJ.isSubideal hx) (hJ.isSubideal hy)]
  dpow_mul hx     := by
    simp [ite_eq_left hx, ite_eq_left (mul_mem_left J _ hx), hI.dpow_mul (hJ.isSubideal hx)]
  mul_dpow hx     := by simp [ite_eq_left hx, hI.mul_dpow (hJ.isSubideal hx)]
  dpow_comp hn hx := by
    simp [ite_eq_left hx, ite_eq_left (hJ.dpow_mem _ hn hx), hI.dpow_comp hn (hJ.isSubideal hx)]

variable {J : Ideal A} (hJ : IsSubDPIdeal hI J) [∀ x, Decidable (x ∈ J)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48853bce2d1873c7253498403051f12d1c18c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
