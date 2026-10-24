# pow_gt_exponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99edc02fe962d6536bd91c79d9ec286dae85a7b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c24e8ec-6503-2545-ef9c-3fba230d41a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8484d5cf-abd9-4325-dc9d-6591b0aba50c",
  "kind": "theorem",
  "lexical_name": "pow_gt_exponent",
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
  "slug": "pow-gt-exponent--1f77b1c43497ada2680071e9",
  "source": {
    "blob": "99edc02fe962d6536bd91c79d9ec286dae85a7b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 136,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f77b1c43497ada2680071e90c08ca324d6fdd478db09de98302603c35fb511e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8484d5cf-abd9-4325-dc9d-6591b0aba50c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pow_gt_exponent {a : ℕ} (b : ℕ) (h : 2 ≤ a) : b < a ^ b :=
  lt_of_lt_of_le (Nat.lt_two_pow b) <| Nat.pow_le_pow_of_le_left h _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99edc02fe962d6536bd91c79d9ec286dae85a7b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
