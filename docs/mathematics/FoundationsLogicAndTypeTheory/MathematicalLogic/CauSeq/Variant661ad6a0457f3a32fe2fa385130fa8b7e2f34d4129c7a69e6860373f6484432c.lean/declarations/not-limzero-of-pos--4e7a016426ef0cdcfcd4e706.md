# not_limZero_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6715e692-bdd5-4001-6f9b-848ecc368d5b",
  "kind": "theorem",
  "lexical_name": "not_limZero_of_pos",
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
  "slug": "not-limzero-of-pos--4e7a016426ef0cdcfcd4e706",
  "source": {
    "blob": "6842220056ddc6363b225c03bc1c3d4cd4c26bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 673,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant661ad6a0457f3a32fe2fa385130fa8b7e2f34d4129c7a69e6860373f6484432c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e7a016426ef0cdcfcd4e706a8c9f29b738e12434d342e568ffa05fea5a24dd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant661ad6a0457f3a32fe2fa385130fa8b7e2f34d4129c7a69e6860373f6484432c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6715e692-bdd5-4001-6f9b-848ecc368d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_limZero_of_pos {f : CauSeq α abs} : Pos f → ¬LimZero f
  | ⟨_, F0, hF⟩, H =>
    let ⟨_, h⟩ := exists_forall_ge_and hF (H _ F0)
    let ⟨h₁, h₂⟩ := h _ le_rfl
    not_lt_of_le h₁ (abs_lt.1 h₂).2
#align cau_seq.not_lim_zero_of_pos CauSeq.not_limZero_of_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant661ad6a0457f3a32fe2fa385130fa8b7e2f34d4129c7a69e6860373f6484432c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant661ad6a0457f3a32fe2fa385130fa8b7e2f34d4129c7a69e6860373f6484432c.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6842220056ddc6363b225c03bc1c3d4cd4c26bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
