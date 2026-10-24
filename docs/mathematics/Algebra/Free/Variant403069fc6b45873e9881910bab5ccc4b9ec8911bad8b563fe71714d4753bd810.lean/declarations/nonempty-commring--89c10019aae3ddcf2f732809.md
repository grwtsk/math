# nonempty_commRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:090e0ef524867473ec17a439ba3c90ad78f742ca1812f0a8e72a18f688a374e5",
  "kind": "instance",
  "lexical_name": "nonempty_commRing",
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
  "slug": "nonempty-commring--89c10019aae3ddcf2f732809",
  "source": {
    "blob": "c2b65b5fb1c15d217a432bc34473d7a1413b73ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 111,
    "path": "GRWTSK/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89c10019aae3ddcf2f732809ed8bb7774f8a5366cdbbbc12bd95f24d528032a1",
  "verification": {
    "reference": "docs/verification/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:090e0ef524867473ec17a439ba3c90ad78f742ca1812f0a8e72a18f688a374e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonempty_commRing [Nonempty α] : Nonempty (CommRing α) := by
  obtain hR | hR := finite_or_infinite α
  · obtain ⟨x⟩ := nonempty_fintype α
    have : NeZero (Fintype.card α) := ⟨by inhabit α; simp⟩
    classical
    obtain ⟨e⟩ := Fintype.truncEquivFin α
    exact ⟨e.commRing⟩
  · have ⟨e⟩ : Nonempty (α ≃ FreeCommRing α) := by simp [← Cardinal.eq]
    exact ⟨e.commRing⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b65b5fb1c15d217a432bc34473d7a1413b73ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
