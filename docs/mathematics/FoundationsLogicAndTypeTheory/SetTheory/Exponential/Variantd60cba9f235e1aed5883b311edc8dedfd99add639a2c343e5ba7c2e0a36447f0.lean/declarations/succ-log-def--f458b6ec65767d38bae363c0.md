# succ_log_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06419e2170b3a958e8c5d82baf1fc25157c77447",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d60cba9f235e1aed5883b311edc8dedfd99add639a2c343e5ba7c2e0a36447f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97d85a9c-6dc1-bba7-04ba-5a4bc6c768f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbce3872-1f2b-beb2-d05a-40bd687bed01",
  "kind": "theorem",
  "lexical_name": "succ_log_def",
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
  "slug": "succ-log-def--f458b6ec65767d38bae363c0",
  "source": {
    "blob": "06419e2170b3a958e8c5d82baf1fc25157c77447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 300,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd60cba9f235e1aed5883b311edc8dedfd99add639a2c343e5ba7c2e0a36447f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f458b6ec65767d38bae363c060d069f13fcf62efb13f51467adfa00b4bd8e325",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd60cba9f235e1aed5883b311edc8dedfd99add639a2c343e5ba7c2e0a36447f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbce3872-1f2b-beb2-d05a-40bd687bed01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_log_def {b x : Ordinal} (hb : 1 < b) (hx : x ≠ 0) :
    succ (log b x) = sInf { o : Ordinal | x < b ^ o } := by
  let t := sInf { o : Ordinal | x < b ^ o }
  have : x < b ^ t := csInf_mem (log_nonempty hb)
  rcases zero_or_succ_or_limit t with (h | h | h)
  · refine ((one_le_iff_ne_zero.2 hx).not_lt ?_).elim
    simpa only [h, opow_zero] using this
  · rw [show log b x = pred t from log_def hb x, succ_pred_iff_is_succ.2 h]
  · rcases (lt_opow_of_limit (zero_lt_one.trans hb).ne' h).1 this with ⟨a, h₁, h₂⟩
    exact h₁.not_le.elim ((le_csInf_iff'' (log_nonempty hb)).1 le_rfl a h₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd60cba9f235e1aed5883b311edc8dedfd99add639a2c343e5ba7c2e0a36447f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd60cba9f235e1aed5883b311edc8dedfd99add639a2c343e5ba7c2e0a36447f0.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06419e2170b3a958e8c5d82baf1fc25157c77447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
