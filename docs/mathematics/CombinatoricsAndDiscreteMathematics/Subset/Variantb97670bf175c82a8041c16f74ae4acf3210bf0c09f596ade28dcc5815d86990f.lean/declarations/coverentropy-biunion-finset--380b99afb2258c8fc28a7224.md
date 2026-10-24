# coverEntropy_biUnion_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e1b74ea-e6dc-b85c-1dd7-ac6778ca6fd9",
  "kind": "lemma",
  "lexical_name": "coverEntropy_biUnion_finset",
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
  "slug": "coverentropy-biunion-finset--380b99afb2258c8fc28a7224",
  "source": {
    "blob": "74b9129e22dbfdf61d149520e0deff1a445fd393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:380b99afb2258c8fc28a722465d9e0cac2eb0951fa12a7105ddcd4203d5645d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e1b74ea-e6dc-b85c-1dd7-ac6778ca6fd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverEntropy_biUnion_finset {T : X → X} {F : ι → Set X} {s : Finset ι} :
    coverEntropy T (⋃ i ∈ s, F i) = ⨆ i ∈ s, coverEntropy T (F i) := by
  have := map_finset_sup (coverEntropy_supBotHom T) s F
  rw [s.sup_set_eq_biUnion, s.sup_eq_iSup, coverEntropy_supBotHom, SupBotHom.coe_mk,
    SupHom.coe_mk] at this
  rw [this]
  congr

end Union

end Dynamics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b9129e22dbfdf61d149520e0deff1a445fd393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
