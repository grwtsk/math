# IterM.step_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82dba87a-1863-2e7a-a7f2-0665f179337e",
  "kind": "theorem",
  "lexical_name": "IterM.step_drop",
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
  "slug": "iterm-step-drop--63476de818b8bafb02f47747",
  "source": {
    "blob": "e7b4212c77a7923578037fdc1654ddcf6d13f18f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Drop/Variantff8c81a478c31a42c5548eb2097d2d07357513693e576a5071982ec3cc281093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63476de818b8bafb02f47747f9a94495bc4e0a4636cb68c97641da5e404cf547",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Drop/Variantff8c81a478c31a42c5548eb2097d2d07357513693e576a5071982ec3cc281093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82dba87a-1863-2e7a-a7f2-0665f179337e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_drop {α m β} [Monad m] [Iterator α m β] {n : Nat}
    {it : IterM (α := α) m β} :
    (it.drop n).step = (do
      match (← it.step).inflate with
      | .yield it' out h =>
        match h' : n with
        | 0 => pure <| .deflate <| .yield (it'.drop 0) out (.yield h (h' ▸ rfl))
        | k + 1 => pure <| .deflate <| .skip (it'.drop k) (.drop h (h' ▸ rfl))
      | .skip it' h => pure <| .deflate <| .skip (it'.drop n) (.skip h)
      | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [drop, step, Iterator.step, IterM.internalState_mk, Nat.succ_eq_add_one]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · cases n <;> rfl
  · rfl
  · rfl

end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Drop/Variantff8c81a478c31a42c5548eb2097d2d07357513693e576a5071982ec3cc281093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Drop/Variantff8c81a478c31a42c5548eb2097d2d07357513693e576a5071982ec3cc281093.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b4212c77a7923578037fdc1654ddcf6d13f18f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
