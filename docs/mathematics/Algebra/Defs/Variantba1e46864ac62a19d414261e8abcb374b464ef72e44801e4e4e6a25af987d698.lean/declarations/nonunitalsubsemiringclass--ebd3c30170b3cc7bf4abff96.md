# NonUnitalSubsemiringClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce9b19675e313a071f5a74b1bf7a7e51635aa69d58b7c33581c58552640f4d50",
  "kind": "class",
  "lexical_name": "NonUnitalSubsemiringClass",
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
  "slug": "nonunitalsubsemiringclass--ebd3c30170b3cc7bf4abff96",
  "source": {
    "blob": "5e0e7d81a7dd660b36599b26d962371f535e65eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebd3c30170b3cc7bf4abff9610ea7fa733cc12211f07639374b6a1b91c2d4e2c",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce9b19675e313a071f5a74b1bf7a7e51635aa69d58b7c33581c58552640f4d50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NonUnitalSubsemiringClass (S : Type*) (R : outParam (Type u)) [NonUnitalNonAssocSemiring R]
    [SetLike S R] : Prop
  extends AddSubmonoidClass S R where
  mul_mem : ∀ {s : S} {a b : R}, a ∈ s → b ∈ s → a * b ∈ s

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0e7d81a7dd660b36599b26d962371f535e65eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
