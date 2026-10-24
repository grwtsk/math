# map_finsupp_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da4688f25c88c9e89344993b8029fde0f502296c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 470,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c01c6b6c3a310b27216fdac3815dbbc41d9138807b871aad3e76e9ebef824b98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebb3ae11-9c32-0bc0-0a72-e50a51fdf1ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bc51973-7dbc-6e45-be29-93059e98e7d0",
  "kind": "theorem",
  "lexical_name": "map_finsupp_prod",
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
  "slug": "map-finsupp-prod--de93e22cf8517371dda74d0c",
  "source": {
    "blob": "da4688f25c88c9e89344993b8029fde0f502296c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 470,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variantc01c6b6c3a310b27216fdac3815dbbc41d9138807b871aad3e76e9ebef824b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de93e22cf8517371dda74d0ce2499bb1656e301f0f430bffb964cd55a2105f72",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variantc01c6b6c3a310b27216fdac3815dbbc41d9138807b871aad3e76e9ebef824b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bc51973-7dbc-6e45-be29-93059e98e7d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem map_finsupp_prod {α : Type*} [Zero α] {ι : Type*} (f : ι →₀ α) (g : ι → α → A) :
    φ (f.prod g) = f.prod fun i a => φ (g i a) :=
  map_finsupp_prod _ _ _
#align alg_hom.map_finsupp_prod AlgHom.map_finsupp_prod

end CommSemiring

section Ring

variable [CommSemiring R] [Ring A] [Ring B]

variable [Algebra R A] [Algebra R B] (φ : A →ₐ[R] B)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variantc01c6b6c3a310b27216fdac3815dbbc41d9138807b871aad3e76e9ebef824b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variantc01c6b6c3a310b27216fdac3815dbbc41d9138807b871aad3e76e9ebef824b98.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da4688f25c88c9e89344993b8029fde0f502296c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
