# injective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03a65490ab0c7ccf385460ba1a266e0e89d6283a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dac9bf95-255d-3149-0505-6e534224f866",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb9b7e42-0357-e4ac-c41e-27b23d468021",
  "kind": "theorem",
  "lexical_name": "injective_iff",
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
  "slug": "injective-iff--392a27ba30d588b236a26d28",
  "source": {
    "blob": "03a65490ab0c7ccf385460ba1a266e0e89d6283a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1274,
    "line": 1267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:392a27ba30d588b236a26d28859f4387c33577a57da73f848ef95c8decd94925",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb9b7e42-0357-e4ac-c41e-27b23d468021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1267–1274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_iff {α β} {f : Option α → β} :
    Injective f ↔ Injective (f ∘ some) ∧ f none ∉ range (f ∘ some) := by
  simp only [mem_range, not_exists, (· ∘ ·)]
  refine
    ⟨fun hf => ⟨hf.comp (Option.some_injective _), fun x => hf.ne <| Option.some_ne_none _⟩, ?_⟩
  rintro ⟨h_some, h_none⟩ (_ | a) (_ | b) hab
  exacts [rfl, (h_none _ hab.symm).elim, (h_none _ hab).elim, congr_arg some (h_some hab)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean#L1267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a65490ab0c7ccf385460ba1a266e0e89d6283a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
