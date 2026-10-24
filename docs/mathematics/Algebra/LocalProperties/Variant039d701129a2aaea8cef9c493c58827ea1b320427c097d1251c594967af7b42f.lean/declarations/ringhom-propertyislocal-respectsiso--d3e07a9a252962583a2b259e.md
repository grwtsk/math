# RingHom.PropertyIsLocal.respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35b8347cfffef2a5d92031d75acf54bd7dc4d46d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c6508a6-c60d-0b31-9cec-ea08526ea66e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cb5334a-b2f6-ffe2-6993-a6d8fd4af9b1",
  "kind": "theorem",
  "lexical_name": "RingHom.PropertyIsLocal.respectsIso",
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
  "slug": "ringhom-propertyislocal-respectsiso--d3e07a9a252962583a2b259e",
  "source": {
    "blob": "35b8347cfffef2a5d92031d75acf54bd7dc4d46d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 184,
    "path": "GRWTSK/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e07a9a252962583a2b259ee242bebe2ab08ac3573622ea0aad79e3980bcc1f",
  "verification": {
    "reference": "docs/verification/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cb5334a-b2f6-ffe2-6993-a6d8fd4af9b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.PropertyIsLocal.respectsIso (hP : RingHom.PropertyIsLocal @P) :
    RingHom.RespectsIso @P := by
  apply hP.StableUnderComposition.respectsIso
  introv
  letI := e.toRingHom.toAlgebra
  -- Porting note: was `apply_with hP.holds_for_localization_away { instances := ff }`
  have : IsLocalization.Away (1 : R) S := by
    apply IsLocalization.away_of_isUnit_of_bijective _ isUnit_one e.bijective
  exact RingHom.PropertyIsLocal.HoldsForLocalizationAway hP S (1 : R)
#align ring_hom.property_is_local.respects_iso RingHom.PropertyIsLocal.respectsIso

-- Almost all arguments are implicit since this is not intended to use mid-proof.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35b8347cfffef2a5d92031d75acf54bd7dc4d46d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
