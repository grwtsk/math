# wellFounded_iff_no_descending_seq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf521906-1d4a-fdd5-64ff-f8cc87ccdf1c",
  "kind": "theorem",
  "lexical_name": "wellFounded_iff_no_descending_seq",
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
  "slug": "wellfounded-iff-no-descending-seq--48af9baca1be9f98129003be",
  "source": {
    "blob": "32201738e61dc8191c04d727e57ca02afc375394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48af9baca1be9f98129003be0a9d3c2c7b85c2b3c742b24480ec56c1d63b826d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf521906-1d4a-fdd5-64ff-f8cc87ccdf1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_iff_no_descending_seq :
    WellFounded r ↔ IsEmpty { f : ℕ → α // ∀ n, r (f (n + 1)) (f n) } := by
  rw [WellFounded.wellFounded_iff_has_min]
  refine ⟨fun hr ↦ ⟨fun ⟨f, hf⟩ ↦ ?_⟩, ?_⟩
  · obtain ⟨_, ⟨n, rfl⟩, hn⟩ := hr _ (Set.range_nonempty f)
    exact hn _ (Set.mem_range_self (n + 1)) (hf n)
  · contrapose!
    rw [not_isEmpty_iff]
    rintro ⟨s, hs, hs'⟩
    let f : ℕ → s := Nat.rec (Classical.indefiniteDescription _ hs) fun n IH ↦
      ⟨(hs' _ IH.2).choose, (hs' _ IH.2).choose_spec.1⟩
    exact ⟨⟨Subtype.val ∘ f, fun n ↦ (hs' _ (f n).2).choose_spec.2⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32201738e61dc8191c04d727e57ca02afc375394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
