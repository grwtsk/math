# Subsingleton.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed1b757fa1db5152c59aa927bd428a59e41bf1c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c543dbe9-e84e-7013-b283-d6725dbd9981",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5823177a-8dc0-e377-76f1-1a2158658f6a",
  "kind": "theorem",
  "lexical_name": "Subsingleton.congr",
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
  "slug": "subsingleton-congr--99a63ee75cebbcfc927f5c00",
  "source": {
    "blob": "ed1b757fa1db5152c59aa927bd428a59e41bf1c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 537,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99a63ee75cebbcfc927f5c006e4cdbf5bf61b28fcc424e69cb636c266c375c8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5823177a-8dc0-e377-76f1-1a2158658f6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subsingleton.congr {s : Cycle α} (h : Subsingleton s) :
    ∀ ⦃x⦄ (_hx : x ∈ s) ⦃y⦄ (_hy : y ∈ s), x = y := by
  induction s using Quot.inductionOn with | _ l
  simp only [length_subsingleton_iff, length_coe, mk_eq_coe, le_iff_lt_or_eq, Nat.lt_add_one_iff,
    length_eq_zero_iff, length_eq_one_iff, Nat.not_lt_zero, false_or] at h
  rcases h with (rfl | ⟨z, rfl⟩) <;> simp

/-- A `s : Cycle α` that is made up of at least two unique elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1b757fa1db5152c59aa927bd428a59e41bf1c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
