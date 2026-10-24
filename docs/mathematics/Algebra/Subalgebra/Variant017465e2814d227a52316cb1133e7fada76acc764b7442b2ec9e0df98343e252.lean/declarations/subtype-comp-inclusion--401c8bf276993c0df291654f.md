# subtype_comp_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0217ab7f126a7bb3e7f7675a05b56734beb0562f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab959c2d-1792-ea55-d2a8-6f661157771b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:795bb606-cbeb-48f4-3a1b-0eca51d3578d",
  "kind": "theorem",
  "lexical_name": "subtype_comp_inclusion",
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
  "slug": "subtype-comp-inclusion--401c8bf276993c0df291654f",
  "source": {
    "blob": "0217ab7f126a7bb3e7f7675a05b56734beb0562f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 189,
    "path": "GRWTSK/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:401c8bf276993c0df291654f82a6782e32bdff4ef249679d26c2106dfa8a8145",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:795bb606-cbeb-48f4-3a1b-0eca51d3578d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtype_comp_inclusion {S₁ S₂ : StarSubalgebra R A} (h : S₁ ≤ S₂) :
    S₂.subtype.comp (inclusion h) = S₁.subtype :=
  rfl
#align star_subalgebra.subtype_comp_inclusion StarSubalgebra.subtype_comp_inclusion

section Map

/-- Transport a star subalgebra via a star algebra homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0217ab7f126a7bb3e7f7675a05b56734beb0562f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
