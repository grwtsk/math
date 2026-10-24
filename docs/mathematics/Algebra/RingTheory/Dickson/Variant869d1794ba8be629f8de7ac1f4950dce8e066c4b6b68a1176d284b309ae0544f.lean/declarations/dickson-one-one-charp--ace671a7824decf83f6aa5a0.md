# dickson_one_one_charP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aee0c850d5b64f09725bda3c041300767deefc52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5d4d748-5404-a1d1-e935-7ec6f8649a44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67fdf6fa-0997-3a67-7050-ce6a77ef180f",
  "kind": "theorem",
  "lexical_name": "dickson_one_one_charP",
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
  "slug": "dickson-one-one-charp--ace671a7824decf83f6aa5a0",
  "source": {
    "blob": "aee0c850d5b64f09725bda3c041300767deefc52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 266,
    "path": "GRWTSK/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ace671a7824decf83f6aa5a0d92450aa96d257b3f0e3be26934345c6d5426e5b",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67fdf6fa-0997-3a67-7050-ce6a77ef180f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dickson_one_one_charP (p : ℕ) [Fact p.Prime] [CharP R p] : dickson 1 (1 : R) p = X ^ p := by
  have h : (1 : R) = ZMod.castHom (dvd_refl p) R 1 := by
    simp only [ZMod.castHom_apply, ZMod.cast_one']
  rw [h, ← map_dickson (ZMod.castHom (dvd_refl p) R), dickson_one_one_zmod_p, Polynomial.map_pow,
    map_X]

end Dickson

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee0c850d5b64f09725bda3c041300767deefc52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
