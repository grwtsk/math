# span_singleton_inf_span_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f33423f76d0bb0ffbb6272b03f6409c225c10191",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:555bdb2a-c843-0abc-a153-267f647d8c42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0219453-447d-0ee7-9458-6d7525f730dd",
  "kind": "lemma",
  "lexical_name": "span_singleton_inf_span_singleton",
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
  "slug": "span-singleton-inf-span-singleton--1cff259fac10678876d33df7",
  "source": {
    "blob": "f33423f76d0bb0ffbb6272b03f6409c225c10191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 551,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cff259fac10678876d33df7c4ac10be03b6e1e36393eab55696629cc2c14d93",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0219453-447d-0ee7-9458-6d7525f730dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_singleton_inf_span_singleton [EuclideanDomain R] [GCDMonoid R] (n m : R) :
    span {n} ⊓ span {m} = span {lcm n m} := by
  rw [Ideal.ext_iff]
  intro x
  rw [Ideal.mem_inf]
  simp only [Ideal.mem_span_singleton]
  exact lcm_dvd_iff.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33423f76d0bb0ffbb6272b03f6409c225c10191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
