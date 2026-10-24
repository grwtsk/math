# card_addOrderOf_eq_totient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:802cc312-e851-2a27-8c32-aff826f642fb",
  "kind": "theorem",
  "lexical_name": "card_addOrderOf_eq_totient",
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
  "slug": "card-addorderof-eq-totient--854c353ee2ff27ccaa925fac",
  "source": {
    "blob": "f100dfac99db57c27650b5a343da01771e2a7417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 498,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:854c353ee2ff27ccaa925fac437262c540121e3fef37a10101d14c09b56f6205",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:802cc312-e851-2a27-8c32-aff826f642fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_addOrderOf_eq_totient {n : ℕ} :
    Nat.card { u : AddCircle p // addOrderOf u = n } = n.totient := by
  rcases n.eq_zero_or_pos with (rfl | hn)
  · simp only [Nat.totient_zero, addOrderOf_eq_zero_iff]
    rcases em (∃ u : AddCircle p, ¬IsOfFinAddOrder u) with (⟨u, hu⟩ | h)
    · have : Infinite { u : AddCircle p // ¬IsOfFinAddOrder u } := by
        rw [← coe_setOf, infinite_coe_iff]
        exact infinite_not_isOfFinAddOrder hu
      exact Nat.card_eq_zero_of_infinite
    · have : IsEmpty { u : AddCircle p // ¬IsOfFinAddOrder u } := by simpa [isEmpty_subtype] using h
      exact Nat.card_of_isEmpty
  · rw [← coe_setOf, Nat.card_congr (setAddOrderOfEquiv p hn),
      n.totient_eq_card_lt_and_coprime]
    simp only [Nat.gcd_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f100dfac99db57c27650b5a343da01771e2a7417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
