# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5835e809b00dab5bc1a2a3fafde02c01184cca361e4530310bec12afaf739d3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a2a6eaa5e3be31b96a378745",
  "source": {
    "blob": "dc21e6011b7d7f414778e9ae6d2e9baff885d74e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantda6e112defc6037db1b383b2fc820b98b277cf177cc87886abd0ead9f4590ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2a6eaa5e3be31b96a3787451282284e0ce5901550aeff63ad87d3b169f01b20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupCompletion/Variantda6e112defc6037db1b383b2fc820b98b277cf177cc87886abd0ead9f4590ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5835e809b00dab5bc1a2a3fafde02c01184cca361e4530310bec12afaf739d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SubNegMonoid (Completion α) where
  sub_eq_add_neg a b :=
    Completion.induction_on₂ a b
      (isClosed_eq (continuous_map₂ continuous_fst continuous_snd)
        (continuous_map₂ continuous_fst (Completion.continuous_map.comp continuous_snd)))
      fun a b ↦ mod_cast congr_arg ((↑) : α → Completion α) (sub_eq_add_neg a b)
  zsmul_zero' a :=
    Completion.induction_on a (isClosed_eq continuous_map continuous_const) fun a ↦
      show (0 : ℤ) • (a : Completion α) = 0 by rw [← coe_smul, ← coe_zero, zero_smul]
  zsmul_succ' n a :=
    Completion.induction_on a
      (isClosed_eq continuous_map <| continuous_map₂ continuous_map continuous_id) fun a ↦
        show (n.succ : ℤ) • (a : Completion α) = _ by
          rw [← coe_smul, show (n.succ : ℤ) • a = (n : ℤ) • a + a from
            SubNegMonoid.zsmul_succ' n a, coe_add, coe_smul]
  zsmul_neg' n a :=
    Completion.induction_on a
      (isClosed_eq continuous_map <| Completion.continuous_map.comp continuous_map) fun a ↦
        show (Int.negSucc n) • (a : Completion α) = _ by
          rw [← coe_smul, show (Int.negSucc n) • a = -((n.succ : ℤ) • a) from
            SubNegMonoid.zsmul_neg' n a, coe_neg, coe_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupCompletion/Variantda6e112defc6037db1b383b2fc820b98b277cf177cc87886abd0ead9f4590ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantda6e112defc6037db1b383b2fc820b98b277cf177cc87886abd0ead9f4590ff7.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc21e6011b7d7f414778e9ae6d2e9baff885d74e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
