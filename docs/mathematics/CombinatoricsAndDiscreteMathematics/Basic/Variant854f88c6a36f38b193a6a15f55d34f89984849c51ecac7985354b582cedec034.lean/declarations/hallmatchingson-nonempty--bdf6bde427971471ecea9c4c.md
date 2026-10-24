# hallMatchingsOn.nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f42a254-3022-4e0b-6802-739fe154871a",
  "kind": "theorem",
  "lexical_name": "hallMatchingsOn.nonempty",
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
  "slug": "hallmatchingson-nonempty--bdf6bde427971471ecea9c4c",
  "source": {
    "blob": "5060b4b59923749f9e231114ac3606fb4d37b29b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdf6bde427971471ecea9c4c824576fddbea3e11b3da7b9e95ec449289208bc7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f42a254-3022-4e0b-6802-739fe154871a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hallMatchingsOn.nonempty {ι : Type u} {α : Type v} [DecidableEq α] (t : ι → Finset α)
    (h : ∀ s : Finset ι, #s ≤ #(s.biUnion t)) (ι' : Finset ι) :
    Nonempty (hallMatchingsOn t ι') := by
  classical
    refine ⟨Classical.indefiniteDescription _ ?_⟩
    apply (all_card_le_biUnion_card_iff_existsInjective' fun i : ι' => t i).mp
    intro s'
    convert h (s'.image (↑)) using 1
    · simp only [card_image_of_injective s' Subtype.coe_injective]
    · rw [image_biUnion]

/-- This is the `hallMatchingsOn` sets assembled into a directed system.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5060b4b59923749f9e231114ac3606fb4d37b29b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
