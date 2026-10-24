# finiteMultiplicity_of_emultiplicity_eq_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73fa16aff3baa9231783726137ed347059e39f0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9233a8aa-d8bf-1b8f-03b6-d48ff65d4edb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1566b6c-df1d-d786-c6c4-8e5a5e6d2c46",
  "kind": "theorem",
  "lexical_name": "finiteMultiplicity_of_emultiplicity_eq_natCast",
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
  "slug": "finitemultiplicity-of-emultiplicity-eq-natcast--9624dddd4558b1cb53236c11",
  "source": {
    "blob": "73fa16aff3baa9231783726137ed347059e39f0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9624dddd4558b1cb53236c112fd30a424ca7915eeb23f43fbfad4c322da8df4b",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1566b6c-df1d-d786-c6c4-8e5a5e6d2c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteMultiplicity_of_emultiplicity_eq_natCast {n : ℕ} (h : emultiplicity a b = n) :
    FiniteMultiplicity a b := by
  by_contra! nh
  rw [← emultiplicity_eq_top, h] at nh
  trivial

@[deprecated (since := "2024-11-30")]
alias finite_of_emultiplicity_eq_natCast := finiteMultiplicity_of_emultiplicity_eq_natCast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73fa16aff3baa9231783726137ed347059e39f0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
