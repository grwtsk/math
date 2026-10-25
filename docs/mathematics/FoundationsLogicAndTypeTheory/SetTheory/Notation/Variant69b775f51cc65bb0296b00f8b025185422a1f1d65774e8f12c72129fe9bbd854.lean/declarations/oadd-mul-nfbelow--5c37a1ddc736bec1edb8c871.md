# oadd_mul_nfBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "692e1f0dfcfdf482c864ba74037ea03ae863bf1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc7cf0c2-dde9-cf48-723c-5e3f9bda2325",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5931eb5-8255-2407-d4ad-a89bc259a73f",
  "kind": "theorem",
  "lexical_name": "oadd_mul_nfBelow",
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
  "slug": "oadd-mul-nfbelow--5c37a1ddc736bec1edb8c871",
  "source": {
    "blob": "692e1f0dfcfdf482c864ba74037ea03ae863bf1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 525,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c37a1ddc736bec1edb8c8718f50623a73f167f849e4d1ae551acb8e8ca8cbcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5931eb5-8255-2407-d4ad-a89bc259a73f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oadd_mul_nfBelow {e₁ n₁ a₁ b₁} (h₁ : NFBelow (oadd e₁ n₁ a₁) b₁) :
    ∀ {o₂ b₂}, NFBelow o₂ b₂ → NFBelow (oadd e₁ n₁ a₁ * o₂) (repr e₁ + b₂)
  | 0, _, _ => NFBelow.zero
  | oadd e₂ n₂ a₂, b₂, h₂ => by
    have IH := oadd_mul_nfBelow h₁ h₂.snd
    by_cases e0 : e₂ = 0 <;> simp only [e0, oadd_mul, ↓reduceIte]
    · apply NFBelow.oadd h₁.fst h₁.snd
      simpa using (add_lt_add_iff_left (repr e₁)).2 (lt_of_le_of_lt (Ordinal.zero_le _) h₂.lt)
    · haveI := h₁.fst
      haveI := h₂.fst
      apply NFBelow.oadd
      · infer_instance
      · rwa [repr_add]
      · rw [repr_add, add_lt_add_iff_left]
        exact h₂.lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `692e1f0dfcfdf482c864ba74037ea03ae863bf1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
