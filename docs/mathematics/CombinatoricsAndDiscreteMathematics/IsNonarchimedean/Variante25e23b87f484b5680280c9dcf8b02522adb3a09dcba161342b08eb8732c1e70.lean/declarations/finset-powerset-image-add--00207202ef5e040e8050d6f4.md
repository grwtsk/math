# finset_powerset_image_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ca3f160-e11a-692f-31e7-2e24bbd8ef85",
  "kind": "theorem",
  "lexical_name": "finset_powerset_image_add",
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
  "slug": "finset-powerset-image-add--00207202ef5e040e8050d6f4",
  "source": {
    "blob": "ae3af9de5366c308ac511910fd8b3546801cbf27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00207202ef5e040e8050d6f4928436c514991b98258c96f77e0fd1fd2aecee8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca3f160-e11a-692f-31e7-2e24bbd8ef85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finset_powerset_image_add [IsStrictOrderedRing R]
    {F α β : Type*} [CommRing α] [FunLike F α R]
    [AddGroupSeminormClass F α R] {f : F} (hf_na : IsNonarchimedean f) (s : Finset β)
    (b : β → α) (m : ℕ) :
    ∃ u : powersetCard (s.card - m) s,
      f ((powersetCard (s.card - m) s).sum fun t : Finset β ↦
        t.prod fun i : β ↦ -b i) ≤ f (u.val.prod fun i : β  ↦ -b i)  := by
  set g := fun t : Finset β ↦ t.prod fun i : β ↦ - b i
  obtain ⟨b, hb_in, hb⟩ := hf_na.finset_image_add g (powersetCard (s.card - m) s)
  exact ⟨⟨b, hb_in (powersetCard_nonempty.mpr (Nat.sub_le s.card m))⟩, hb⟩

omit [Semiring R] in
open Finset in
/-- Ultrametric inequality with `Finset.sum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3af9de5366c308ac511910fd8b3546801cbf27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
