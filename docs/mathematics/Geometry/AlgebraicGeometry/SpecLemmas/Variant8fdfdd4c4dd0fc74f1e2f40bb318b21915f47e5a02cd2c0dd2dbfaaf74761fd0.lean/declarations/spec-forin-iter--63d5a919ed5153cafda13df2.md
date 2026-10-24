# Spec.forIn_iter

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
      "line": 1312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93824706-89d5-96e1-b57b-334ac63385d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83b8a524-4dfe-ab49-fbaa-b64e7ffb4d3c",
  "kind": "theorem",
  "lexical_name": "Spec.forIn_iter",
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
  "slug": "spec-forin-iter--63d5a919ed5153cafda13df2",
  "source": {
    "blob": "4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1333,
    "line": 1312,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63d5a919ed5153cafda13df2d49ee7ee58e8c20d215fd5b66b7a70f5abb5d27e",
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

Occurrence: `result:83b8a524-4dfe-ab49-fbaa-b64e7ffb4d3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1312–1333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.forIn_iter {α β γ : Type u} {m : Type u → Type w} {Pred : Type u} {EPred : Type u}
    [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred]
    [Iterator α Id β] [Finite α Id] [IteratorLoop α Id m] [LawfulIteratorLoop α Id m]
    {init : γ} {f : β → γ → m (ForInStep γ)}
    {it : Iter (α := α) β}
    (inv : Invariant it.toList γ Pred)
    {epost : EPred}
    (step : ∀ pref cur suff (h : it.toList = pref ++ cur :: suff) b,
      Triple
        (f cur b)
        (inv ⟨pref, cur::suff, h.symm⟩ b)
        (fun r => match r with
          | .yield b' => inv ⟨pref ++ [cur], suff, by simp [h]⟩ b'
          | .done b' => inv ⟨it.toList, [], by simp⟩ b')
        epost) :
    Triple (forIn it init f) (inv ⟨[], it.toList, rfl⟩ init)
      (fun b => inv ⟨it.toList, [], by simp⟩ b) epost := by
  simp only [← Iter.forIn_toList]
  exact Spec.forIn_list inv step


@[spec low]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean#L1312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
