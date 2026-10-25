# derivFamily_lt_ord_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab830f5c-9549-62f8-2c5f-853783ce46f4",
  "kind": "theorem",
  "lexical_name": "derivFamily_lt_ord_lift",
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
  "slug": "derivfamily-lt-ord-lift--8a8c1f8f02879666eb6a178c",
  "source": {
    "blob": "09320673682f807d3d701755b33364e24fca3c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a8c1f8f02879666eb6a178cfac8a650ad066c599bab7f3f927e69e2e87a8df9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab830f5c-9549-62f8-2c5f-853783ce46f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivFamily_lt_ord_lift {ι : Type u} {f : ι → Ordinal → Ordinal} {c} (hc : IsRegular c)
    (hι : lift.{v} #ι < c) (hc' : c ≠ ℵ₀) (hf : ∀ i, ∀ b < c.ord, f i b < c.ord) {a} :
    a < c.ord → derivFamily f a < c.ord := by
  have hω : ℵ₀ < c.ord.cof := by
    rw [hc.cof_eq]
    exact lt_of_le_of_ne hc.1 hc'.symm
  induction a using limitRecOn with
  | zero =>
    rw [derivFamily_zero]
    exact nfpFamily_lt_ord_lift hω (by rwa [hc.cof_eq]) hf
  | succ b hb =>
    intro hb'
    rw [derivFamily_succ]
    exact
      nfpFamily_lt_ord_lift hω (by rwa [hc.cof_eq]) hf
        ((isLimit_ord hc.1).succ_lt (hb ((lt_succ b).trans hb')))
  | isLimit b hb H =>
    intro hb'
    -- TODO: generalize the universes of the lemmas in this file so we don't have to rely on bsup
    have : ⨆ a : Iio b, _ = _ :=
      iSup_eq_bsup.{max u v, max u v} (f := fun x (_ : x < b) ↦ derivFamily f x)
    rw [derivFamily_limit f hb, this]
    exact
      bsup_lt_ord_of_isRegular.{u, v} hc (ord_lt_ord.1 ((ord_card_le b).trans_lt hb')) fun o' ho' =>
        H o' ho' (ho'.trans hb')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09320673682f807d3d701755b33364e24fca3c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
