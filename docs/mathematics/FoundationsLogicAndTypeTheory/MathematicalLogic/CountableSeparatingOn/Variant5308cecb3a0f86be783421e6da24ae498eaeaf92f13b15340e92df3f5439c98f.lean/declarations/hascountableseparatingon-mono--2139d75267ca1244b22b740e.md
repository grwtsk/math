# HasCountableSeparatingOn.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "552a128f17bc54ad4022fe8dad42549365c51201",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a692a4dd-83e4-c8f7-7575-a9ec62ce1ba9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14808ee5-969c-c6da-883a-e78bee820bbf",
  "kind": "theorem",
  "lexical_name": "HasCountableSeparatingOn.mono",
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
  "slug": "hascountableseparatingon-mono--2139d75267ca1244b22b740e",
  "source": {
    "blob": "552a128f17bc54ad4022fe8dad42549365c51201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2139d75267ca1244b22b740eb3aaa88cc7e7897b7d97f06fc0a6d0d809b1b4b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14808ee5-969c-c6da-883a-e78bee820bbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCountableSeparatingOn.mono {α} {p₁ p₂ : Set α → Prop} {t₁ t₂ : Set α}
    [h : HasCountableSeparatingOn α p₁ t₁] (hp : ∀ s, p₁ s → p₂ s) (ht : t₂ ⊆ t₁) :
    HasCountableSeparatingOn α p₂ t₂ where
  exists_countable_separating :=
    let ⟨S, hSc, hSp, hSt⟩ := h.1
    ⟨S, hSc, fun s hs ↦ hp s (hSp s hs), fun x hx y hy ↦ hSt x (ht hx) y (ht hy)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `552a128f17bc54ad4022fe8dad42549365c51201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
