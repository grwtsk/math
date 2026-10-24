# card_quotient_dvd_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85c81325b086ad87323babbdb1772e9ed8f2424f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eccd16c-5c58-ff4f-f501-cec8e671f525",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c44c58a-b67e-7d4e-eee1-2a741c860e74",
  "kind": "theorem",
  "lexical_name": "card_quotient_dvd_card",
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
  "slug": "card-quotient-dvd-card--78b6fbe4b76a655218144ba9",
  "source": {
    "blob": "85c81325b086ad87323babbdb1772e9ed8f2424f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 46,
    "path": "GRWTSK/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78b6fbe4b76a655218144ba948e444497e1fe10407ede32c0161b718d18b70ac",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c44c58a-b67e-7d4e-eee1-2a741c860e74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_quotient_dvd_card (s : Subgroup α) : Nat.card (α ⧸ s) ∣ Nat.card α := by
  simp [card_eq_card_quotient_mul_card_subgroup s, @dvd_mul_right ℕ]

variable {H : Type*} [Group H]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85c81325b086ad87323babbdb1772e9ed8f2424f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
