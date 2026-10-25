# sectR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a11e8e87af32d16edb7805de83d2154fc2bb1078a5dbb0e8814195744c5dad48",
  "kind": "def",
  "lexical_name": "sectR",
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
  "slug": "sectr--8465b22dfef6daa55f3dd40f",
  "source": {
    "blob": "ebafe42ebfbcd27dc91c598270bdba4de9bc88fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant24767d0107a452b258e8d4c3a492f6babff2b6c0f148dd47f1537c78ebfc7193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8465b22dfef6daa55f3dd40fb4dcb2f35c07129337a9705d4aea155ba66f7bee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant24767d0107a452b258e8d4c3a492f6babff2b6c0f148dd47f1537c78ebfc7193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a11e8e87af32d16edb7805de83d2154fc2bb1078a5dbb0e8814195744c5dad48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sectR {α : Sort _} (a : α) (β : Sort _) : β ↪ α × β :=
  ⟨fun b => (a, b), fun _ _ h => congr_arg Prod.snd h⟩

@[deprecated (since := "2024-11-12")] alias sectl := sectL
@[deprecated (since := "2024-11-12")] alias sectr := sectR
@[deprecated (since := "2024-11-12")] alias sectl_apply := sectL_apply
@[deprecated (since := "2024-11-12")] alias sectr_apply := sectR_apply

/-- If `e₁` and `e₂` are embeddings, then so is `Prod.map e₁ e₂ : (a, b) ↦ (e₁ a, e₂ b)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant24767d0107a452b258e8d4c3a492f6babff2b6c0f148dd47f1537c78ebfc7193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant24767d0107a452b258e8d4c3a492f6babff2b6c0f148dd47f1537c78ebfc7193.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebafe42ebfbcd27dc91c598270bdba4de9bc88fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
