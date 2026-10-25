# nonpos_iff_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcee1417729a3d28a5e9d1e4082beec9138ca435",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06a75102-793e-e278-d396-f0168bf8ca82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a1cbdc6-aaa3-5458-c326-018ccb873808",
  "kind": "theorem",
  "lexical_name": "nonpos_iff_eq_zero",
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
  "slug": "nonpos-iff-eq-zero--bdecdaa200a92c2131670216",
  "source": {
    "blob": "dcee1417729a3d28a5e9d1e4082beec9138ca435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdecdaa200a92c213167021675d50b465c545c124e817b89f941dda1a3f546fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a1cbdc6-aaa3-5458-c326-018ccb873808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonpos_iff_eq_zero (q : ℚ≥0) : q ≤ 0 ↔ q = 0 :=
  ⟨fun h => le_antisymm h q.2, fun h => h.symm ▸ q.2⟩

end NNRat

open NNRat

namespace Rat

variable {p q : ℚ}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcee1417729a3d28a5e9d1e4082beec9138ca435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
