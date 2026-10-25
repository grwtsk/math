# stateEqRs_implies_write_eq_rs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "142a3ff54cfd57837a9d0d87c13bcfabc400528a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:baeef6db-72d5-5775-734d-2a84a9a31da7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ff70782-91e7-f158-ea79-c4e0f999877c",
  "kind": "theorem",
  "lexical_name": "stateEqRs_implies_write_eq_rs",
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
  "slug": "stateeqrs-implies-write-eq-rs--37c975b24269e3ba4480afe0",
  "source": {
    "blob": "142a3ff54cfd57837a9d0d87c13bcfabc400528a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c975b24269e3ba4480afe0e8935226d5d293eed03a9742ef12e99604774428",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ff70782-91e7-f158-ea79-c4e0f999877c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stateEqRs_implies_write_eq_rs {t : Register} {ζ₁ ζ₂ : State} (h : ζ₁ ≃[t]/ac ζ₂)
    (r : Register) (v : Word) : write r v ζ₁ ≃[t]/ac write r v ζ₂ := by
  simp [StateEqRs] at *
  intro r' hr'
  specialize h r' hr'
  congr
#align arithcc.state_eq_rs_implies_write_eq_rs Arithcc.stateEqRs_implies_write_eq_rs

/-- `≃[t + 1]` with writing to register `t` implies `≃[t]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142a3ff54cfd57837a9d0d87c13bcfabc400528a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
