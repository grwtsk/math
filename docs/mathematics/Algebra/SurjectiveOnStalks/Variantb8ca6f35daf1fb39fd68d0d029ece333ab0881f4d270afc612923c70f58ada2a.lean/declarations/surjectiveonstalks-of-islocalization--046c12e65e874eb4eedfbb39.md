# surjectiveOnStalks_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c007c66-0ea6-fac8-8e3b-cd85779929d1",
  "kind": "lemma",
  "lexical_name": "surjectiveOnStalks_of_isLocalization",
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
  "slug": "surjectiveonstalks-of-islocalization--046c12e65e874eb4eedfbb39",
  "source": {
    "blob": "d40b55ec91fb21b3e9cc0c3de5e3140f7df998ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 167,
    "path": "GRWTSK/Algebra/SurjectiveOnStalks/Variantb8ca6f35daf1fb39fd68d0d029ece333ab0881f4d270afc612923c70f58ada2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:046c12e65e874eb4eedfbb39ce5f94bb065a2bf9907096e058a735cc9476f534",
  "verification": {
    "reference": "docs/verification/Algebra/SurjectiveOnStalks/Variantb8ca6f35daf1fb39fd68d0d029ece333ab0881f4d270afc612923c70f58ada2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c007c66-0ea6-fac8-8e3b-cd85779929d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjectiveOnStalks_of_isLocalization
    [Algebra R S] [IsLocalization M S] :
    SurjectiveOnStalks (algebraMap R S) := by
  refine surjectiveOnStalks_of_exists_div fun s ↦ ?_
  obtain ⟨x, s, rfl⟩ := IsLocalization.exists_mk'_eq M s
  exact ⟨x, s, IsLocalization.map_units S s, IsLocalization.mk'_spec' S x s⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SurjectiveOnStalks/Variantb8ca6f35daf1fb39fd68d0d029ece333ab0881f4d270afc612923c70f58ada2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SurjectiveOnStalks/Variantb8ca6f35daf1fb39fd68d0d029ece333ab0881f4d270afc612923c70f58ada2a.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40b55ec91fb21b3e9cc0c3de5e3140f7df998ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
