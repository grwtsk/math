# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.Function.Embedding.fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7fb722e53b937d9c0928a6d93f23284415118d391c3cf65f73963f44ce66e2a",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.Function.Embedding.fintype",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-pifinset-variant52ed97c3--28dc678850aa608d6050a226",
  "source": {
    "blob": "9fa2d585efbca9f4f01fb95cfc30a01ec2457b40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28dc678850aa608d6050a22631fcc274d1da5c3c2ea7ab182238d10d0351e6ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7fb722e53b937d9c0928a6d93f23284415118d391c3cf65f73963f44ce66e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.Function.Embedding.fintype {α β} [Fintype α] [Fintype β] :
  Fintype (α ↪ β) :=
  by classical. exact Fintype.ofEquiv _ (Equiv.subtypeInjectiveEquivEmbedding α β)
#align function.embedding.fintype Function.Embedding.fintype

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa2d585efbca9f4f01fb95cfc30a01ec2457b40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
