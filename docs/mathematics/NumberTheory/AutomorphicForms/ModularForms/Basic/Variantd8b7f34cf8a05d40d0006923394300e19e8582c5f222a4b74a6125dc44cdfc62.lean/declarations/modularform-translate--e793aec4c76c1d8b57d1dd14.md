# ModularForm.translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cba3111061d854eeaab679218b30789f6d7fb79ec8902d6368abebd2eba8082c",
  "kind": "def",
  "lexical_name": "ModularForm.translate",
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
  "slug": "modularform-translate--e793aec4c76c1d8b57d1dd14",
  "source": {
    "blob": "1ab26fd50d7f60d5eed884295f4c918114919dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 463,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e793aec4c76c1d8b57d1dd14bdd1d76da0ba67c9f00623f30c193dba93657923",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cba3111061d854eeaab679218b30789f6d7fb79ec8902d6368abebd2eba8082c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ModularForm.translate [ModularFormClass F Γ k] :
    ModularForm (Γ.map <| MulAut.conj g⁻¹) k where
  __ := SlashInvariantForm.translate f g
  bdd_at_infty' h := by simpa [SlashAction.slash_mul] using ModularFormClass.bdd_at_infty f (g * h)
  holo' := (ModularFormClass.holo f).slash k (by simp)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab26fd50d7f60d5eed884295f4c918114919dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
