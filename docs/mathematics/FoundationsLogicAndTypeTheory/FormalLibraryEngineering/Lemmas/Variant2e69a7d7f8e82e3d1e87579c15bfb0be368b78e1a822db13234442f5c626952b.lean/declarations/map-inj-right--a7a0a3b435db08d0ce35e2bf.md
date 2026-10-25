# map_inj_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ab27c5b-1afc-9070-1351-253e97da48da",
  "kind": "theorem",
  "lexical_name": "map_inj_right",
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
  "slug": "map-inj-right--a7a0a3b435db08d0ce35e2bf",
  "source": {
    "blob": "4146833a8074857815fadd1f1d338db82e82e28c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant2e69a7d7f8e82e3d1e87579c15bfb0be368b78e1a822db13234442f5c626952b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7a0a3b435db08d0ce35e2bf2c00ff5c2d7877726f30794d370d1d93e2de3865",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant2e69a7d7f8e82e3d1e87579c15bfb0be368b78e1a822db13234442f5c626952b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ab27c5b-1afc-9070-1351-253e97da48da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem map_inj_right [Monad m] [LawfulMonad m]
    {f : α → β} (h : ∀ {x y : α}, f x = f y → x = y) {x y : m α} :
    f <$> x = f <$> y ↔ x = y := by
  by_cases hempty : Nonempty α
  · exact map_inj_right_of_nonempty h
  · constructor
    · intro h'
      have (z : m α) : z = (do let a ← z; let b ← pure (f a); x) := by
        conv => lhs; rw [← bind_pure z]
        congr; funext a
        exact (hempty ⟨a⟩).elim
      rw [this x, this y]
      rw [← bind_assoc, ← map_eq_pure_bind, h', map_eq_pure_bind, bind_assoc]
    · intro h'
      rw [h']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant2e69a7d7f8e82e3d1e87579c15bfb0be368b78e1a822db13234442f5c626952b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant2e69a7d7f8e82e3d1e87579c15bfb0be368b78e1a822db13234442f5c626952b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4146833a8074857815fadd1f1d338db82e82e28c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
