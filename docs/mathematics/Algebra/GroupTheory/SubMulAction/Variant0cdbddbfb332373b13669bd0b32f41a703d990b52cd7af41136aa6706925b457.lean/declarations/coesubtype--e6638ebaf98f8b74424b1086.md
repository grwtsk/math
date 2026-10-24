# coeSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fda4f378edba50c35e4f82e1186764443b8650e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bf18b13-c9a7-a8b2-364e-8e73ce5c9b70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69819a2d-2704-0b0b-650c-7e4822328df4",
  "kind": "theorem",
  "lexical_name": "coeSubtype",
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
  "slug": "coesubtype--e6638ebaf98f8b74424b1086",
  "source": {
    "blob": "fda4f378edba50c35e4f82e1186764443b8650e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 232,
    "path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6638ebaf98f8b74424b1086d69a9f1f7da8ca5b67e5d4b1d7c18742634098df",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69819a2d-2704-0b0b-650c-7e4822328df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem coeSubtype : (SMulMemClass.subtype S' : S' → M) = Subtype.val :=
  rfl
#align sub_mul_action.smul_mem_class.coe_subtype SubMulAction.SMulMemClass.coeSubtype

end SMulMemClass

section MulActionMonoid

variable [Monoid R] [MulAction R M]

section

variable [SMul S R] [SMul S M] [IsScalarTower S R M]

variable (p : SubMulAction R M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fda4f378edba50c35e4f82e1186764443b8650e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
