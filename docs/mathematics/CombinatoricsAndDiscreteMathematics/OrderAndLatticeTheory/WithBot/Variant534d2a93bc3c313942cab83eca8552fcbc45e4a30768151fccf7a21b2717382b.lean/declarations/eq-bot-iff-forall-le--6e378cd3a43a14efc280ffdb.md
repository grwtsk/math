# eq_bot_iff_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c044780-f9ba-5e14-681c-60141f16cb93",
  "kind": "lemma",
  "lexical_name": "eq_bot_iff_forall_le",
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
  "slug": "eq-bot-iff-forall-le--6e378cd3a43a14efc280ffdb",
  "source": {
    "blob": "7cd4abe2662342be3dbe34e78eb42b7f05a8cd04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 341,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant534d2a93bc3c313942cab83eca8552fcbc45e4a30768151fccf7a21b2717382b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e378cd3a43a14efc280ffdb2da5489bb70ae06fed3dd5fce8853d154dc4eb2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant534d2a93bc3c313942cab83eca8552fcbc45e4a30768151fccf7a21b2717382b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c044780-f9ba-5e14-681c-60141f16cb93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_bot_iff_forall_le [NoBotOrder α] : x = ⊥ ↔ ∀ b : α, x ≤ b := by
  refine ⟨by simp +contextual, fun h ↦ (x.eq_bot_iff_forall_ne).2 fun y => ?_⟩
  rintro rfl
  exact not_isBot y fun z => coe_le_coe.1 (h z)

@[deprecated (since := "2025-03-19")] alias forall_lt_iff_eq_bot := eq_bot_iff_forall_lt
@[deprecated (since := "2025-03-19")] alias forall_le_iff_eq_bot := eq_bot_iff_forall_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant534d2a93bc3c313942cab83eca8552fcbc45e4a30768151fccf7a21b2717382b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant534d2a93bc3c313942cab83eca8552fcbc45e4a30768151fccf7a21b2717382b.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cd4abe2662342be3dbe34e78eb42b7f05a8cd04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
