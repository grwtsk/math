# exists_cycleOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22ca3875-310a-861e-4a49-f9d2bb6bb1ed",
  "kind": "theorem",
  "lexical_name": "exists_cycleOn",
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
  "slug": "exists-cycleon--f3e39c7fad49a589c34b4fde",
  "source": {
    "blob": "33a0a177dacc514f42e4d5742e070ec7c0806fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 869,
    "line": 857,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e39c7fad49a589c34b4fdec078210dfc7229fdc75efb36a3e740d34a8e26da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22ca3875-310a-861e-4a49-f9d2bb6bb1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 857–869.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_cycleOn (s : Finset α) :
    ∃ f : Perm α, f.IsCycleOn s ∧ f.support ⊆ s := by
  refine ⟨s.toList.formPerm, ?_, fun x hx => by
    simpa using List.mem_of_formPerm_apply_ne (Perm.mem_support.1 hx)⟩
  convert! s.nodup_toList.isCycleOn_formPerm
  simp

end Finset

namespace Set

variable {f : Perm α} {s : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean#L857).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a0a177dacc514f42e4d5742e070ec7c0806fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
