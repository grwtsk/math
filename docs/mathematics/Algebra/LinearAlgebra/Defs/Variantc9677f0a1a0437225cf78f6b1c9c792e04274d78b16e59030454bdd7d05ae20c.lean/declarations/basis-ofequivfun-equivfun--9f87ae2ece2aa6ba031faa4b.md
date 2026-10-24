# Basis.ofEquivFun_equivFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cb1a63902dbde72aa29024a8ea0cc281dd9ad7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9677f0a1a0437225cf78f6b1c9c792e04274d78b16e59030454bdd7d05ae20c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:231e9673-6ebc-855e-dc15-3b59344ed2ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d531670-6699-cf80-c4cc-5e7e3722f351",
  "kind": "theorem",
  "lexical_name": "Basis.ofEquivFun_equivFun",
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
  "slug": "basis-ofequivfun-equivfun--9f87ae2ece2aa6ba031faa4b",
  "source": {
    "blob": "6cb1a63902dbde72aa29024a8ea0cc281dd9ad7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantc9677f0a1a0437225cf78f6b1c9c792e04274d78b16e59030454bdd7d05ae20c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f87ae2ece2aa6ba031faa4b680742a9f10c9c114ba13bb90ac4ce06079dee1e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantc9677f0a1a0437225cf78f6b1c9c792e04274d78b16e59030454bdd7d05ae20c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d531670-6699-cf80-c4cc-5e7e3722f351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Basis.ofEquivFun_equivFun [Finite ι] (v : Basis ι R M) :
    Basis.ofEquivFun v.equivFun = v :=
  Basis.repr_injective <| by ext; rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantc9677f0a1a0437225cf78f6b1c9c792e04274d78b16e59030454bdd7d05ae20c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantc9677f0a1a0437225cf78f6b1c9c792e04274d78b16e59030454bdd7d05ae20c.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb1a63902dbde72aa29024a8ea0cc281dd9ad7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
