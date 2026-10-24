# Spec.forIn_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 791,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5e142e9-1dad-aea2-825e-2bcc8037ccf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:935c9635-6e8a-59f5-5aec-4d484bc25c43",
  "kind": "theorem",
  "lexical_name": "Spec.forIn_range",
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
  "slug": "spec-forin-range--df1bfb253604ffc8f5c99df1",
  "source": {
    "blob": "4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 791,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df1bfb253604ffc8f5c99df1629c1cf1f43c804ec78048cd8e000fab73ea1fb6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:935c9635-6e8a-59f5-5aec-4d484bc25c43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.forIn_range {β : Type u} {m : Type u → Type v} {Pred : Type u} {EPred : Type u}
    [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred]
    {xs : Std.Legacy.Range} {init : β} {f : Nat → β → m (ForInStep β)}
    (inv : Invariant xs.toList β Pred)
    {epost : EPred}
    (step : ∀ pref cur suff (h : xs.toList = pref ++ cur :: suff) b,
      Triple
        (f cur b)
        (inv ⟨pref, cur::suff, h.symm⟩ b)
        (fun r => match r with
          | ForInStep.yield b' => inv ⟨pref ++ [cur], suff, by simp [h]⟩ b'
          | ForInStep.done b' => inv ⟨xs.toList, [], by simp⟩ b')
        epost) :
    Triple
      (forIn xs init f)
      (inv ⟨[], xs.toList, rfl⟩ init)
      (fun b => inv ⟨xs.toList, [], by simp⟩ b)
      epost := by
  simp only [Std.Legacy.Range.forIn_eq_forIn_range', Std.Legacy.Range.size]
  exact Spec.forIn_list inv step

open Std Std.PRange in

@[spec]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
