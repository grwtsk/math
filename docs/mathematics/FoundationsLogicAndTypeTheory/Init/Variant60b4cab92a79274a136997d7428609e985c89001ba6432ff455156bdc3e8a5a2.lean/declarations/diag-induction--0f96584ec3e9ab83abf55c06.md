# diag_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:affebd33-e96a-d4a6-0926-728c138ea231",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4b664e6-4b20-a1e4-2f23-d982b316391d",
  "kind": "theorem",
  "lexical_name": "diag_induction",
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
  "slug": "diag-induction--0f96584ec3e9ab83abf55c06",
  "source": {
    "blob": "4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f96584ec3e9ab83abf55c06da261813972d62ac535dba1a3abc364db3b7a07c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4b664e6-4b20-a1e4-2f23-d982b316391d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diag_induction (P : ℕ → ℕ → Prop) (ha : ∀ a, P (a + 1) (a + 1)) (hb : ∀ b, P 0 (b + 1))
    (hd : ∀ a b, a < b → P (a + 1) b → P a (b + 1) → P (a + 1) (b + 1)) : ∀ a b, a < b → P a b
  | 0, _ + 1, _ => hb _
  | a + 1, b + 1, h => by
    apply hd _ _ (Nat.add_lt_add_iff_right.1 h)
    · have this : a + 1 = b ∨ a + 1 < b := by omega
      have wf : (a + 1) + b < (a + 1) + (b + 1) := by simp
      rcases this with (rfl | h)
      · exact ha _
      apply diag_induction P ha hb hd (a + 1) b h
    have _ : a + (b + 1) < (a + 1) + (b + 1) := by simp
    apply diag_induction P ha hb hd a (b + 1)
    apply Nat.lt_of_le_of_lt (Nat.le_succ _) h

/-! ### `mod`, `dvd` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
