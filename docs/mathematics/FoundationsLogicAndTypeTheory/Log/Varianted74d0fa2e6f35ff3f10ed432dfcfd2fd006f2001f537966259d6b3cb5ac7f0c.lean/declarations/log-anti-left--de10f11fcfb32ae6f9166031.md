# log_anti_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d55ac8d3c91640e64ac966fb9abb0439412c8eff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa4e1a5b-59b3-9bd2-f861-e71326177b63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9de3a6f0-2177-a1b8-b768-9c251d97e185",
  "kind": "theorem",
  "lexical_name": "log_anti_left",
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
  "slug": "log-anti-left--de10f11fcfb32ae6f9166031",
  "source": {
    "blob": "d55ac8d3c91640e64ac966fb9abb0439412c8eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de10f11fcfb32ae6f9166031a2495faf9effe2380ed0c6908607920d316abb35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de3a6f0-2177-a1b8-b768-9c251d97e185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_anti_left {b c n : ℕ} (hc : 1 < c) (hb : c ≤ b) : log b n ≤ log c n := by
  rcases eq_or_ne n 0 with (rfl | hn); · rw [log_zero_right, log_zero_right]
  apply le_log_of_pow_le hc
  calc
    c ^ log b n ≤ b ^ log b n := pow_le_pow_of_le_left' hb _
    _ ≤ n := pow_log_le_self _ hn
#align nat.log_anti_left Nat.log_anti_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55ac8d3c91640e64ac966fb9abb0439412c8eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
