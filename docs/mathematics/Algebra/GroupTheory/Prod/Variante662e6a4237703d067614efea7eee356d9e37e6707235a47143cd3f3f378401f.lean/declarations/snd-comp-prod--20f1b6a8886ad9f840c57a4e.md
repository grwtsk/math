# snd_comp_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "652f478cb23c07fee184650d53dd730d10c761a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e662e6a4237703d067614efea7eee356d9e37e6707235a47143cd3f3f378401f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e37c928-d34d-3a0c-b5a3-d178c22bd4e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33346515-0ebf-ba3b-8a95-dac28daa0fd1",
  "kind": "theorem",
  "lexical_name": "snd_comp_prod",
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
  "slug": "snd-comp-prod--20f1b6a8886ad9f840c57a4e",
  "source": {
    "blob": "652f478cb23c07fee184650d53dd730d10c761a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 362,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variante662e6a4237703d067614efea7eee356d9e37e6707235a47143cd3f3f378401f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20f1b6a8886ad9f840c57a4e4f2fcfebc6b409ad861b88cf7a99f230be3032de",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variante662e6a4237703d067614efea7eee356d9e37e6707235a47143cd3f3f378401f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33346515-0ebf-ba3b-8a95-dac28daa0fd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snd_comp_prod (f : M →ₙ* N) (g : M →ₙ* P) : (snd N P).comp (f.prod g) = g :=
  ext fun _ => rfl
#align mul_hom.snd_comp_prod MulHom.snd_comp_prod
#align add_hom.snd_comp_prod AddHom.snd_comp_prod

@[to_additive (attr := simp) prod_unique]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variante662e6a4237703d067614efea7eee356d9e37e6707235a47143cd3f3f378401f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variante662e6a4237703d067614efea7eee356d9e37e6707235a47143cd3f3f378401f.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652f478cb23c07fee184650d53dd730d10c761a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
