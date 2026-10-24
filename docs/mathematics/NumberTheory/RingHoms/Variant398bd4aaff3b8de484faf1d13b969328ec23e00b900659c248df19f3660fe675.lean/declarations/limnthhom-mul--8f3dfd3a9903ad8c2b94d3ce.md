# limNthHom_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 583,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d2e12d3-1f51-8afc-8d49-b7e88685bb4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60d1fbee-48fd-5335-e2d8-88f212a3ced6",
  "kind": "theorem",
  "lexical_name": "limNthHom_mul",
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
  "slug": "limnthhom-mul--8f3dfd3a9903ad8c2b94d3ce",
  "source": {
    "blob": "9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 583,
    "path": "GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f3dfd3a9903ad8c2b94d3ce3b909e20e8ab99857c13b916dda346b4d591a6d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60d1fbee-48fd-5335-e2d8-88f212a3ced6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limNthHom_mul (r s : R) :
    limNthHom f_compat (r * s) = limNthHom f_compat r * limNthHom f_compat s :=
  Subtype.ext <| Quot.sound <| nthHomSeq_mul f_compat _ _

-- TODO: generalize this to arbitrary complete discrete valuation rings
/-- `lift f_compat` is the limit of a sequence `f` of compatible ring homs `R →+* ZMod (p^k)`,
with the equality `lift f_compat r = PadicInt.limNthHom f_compat r`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
