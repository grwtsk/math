# mkAlgHom_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e037adeab9b192f45e09e36d49b0dec6fee6d9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 547,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bbebe8f-39dc-0556-b177-80247eec24f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:235c9f87-8213-dcb4-e9d7-1edf90aa0998",
  "kind": "theorem",
  "lexical_name": "mkAlgHom_surjective",
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
  "slug": "mkalghom-surjective--0b26ee3f4fd1252151aaa1b5",
  "source": {
    "blob": "5e037adeab9b192f45e09e36d49b0dec6fee6d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 547,
    "path": "GRWTSK/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b26ee3f4fd1252151aaa1b5cd05737c0f5724b76c5288c25c74a6f5235aa334",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:235c9f87-8213-dcb4-e9d7-1edf90aa0998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkAlgHom_surjective (s : A → A → Prop) : Function.Surjective (mkAlgHom S s) := by
  suffices Function.Surjective fun x ↦ (⟨.mk (Rel s) x⟩ : RingQuot s) by
    simpa [mkAlgHom_def, mkRingHom_def]
  rintro ⟨⟨a⟩⟩
  use a

variable {B : Type u₄} [Semiring B] [Algebra S B]

@[ext 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e037adeab9b192f45e09e36d49b0dec6fee6d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
