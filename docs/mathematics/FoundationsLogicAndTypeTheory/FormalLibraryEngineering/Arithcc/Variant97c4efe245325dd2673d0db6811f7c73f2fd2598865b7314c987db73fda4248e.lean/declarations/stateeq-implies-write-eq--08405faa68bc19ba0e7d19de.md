# stateEq_implies_write_eq

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
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bbd9b23-a4b6-ba1e-672e-ac7600d57231",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dde03e53-6e65-9f8b-addc-df307ae49ef4",
  "kind": "theorem",
  "lexical_name": "stateEq_implies_write_eq",
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
  "slug": "stateeq-implies-write-eq--08405faa68bc19ba0e7d19de",
  "source": {
    "blob": "142a3ff54cfd57837a9d0d87c13bcfabc400528a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08405faa68bc19ba0e7d19de33b1edfce5472ecd9bed31012a750aae867a8a91",
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

Occurrence: `result:dde03e53-6e65-9f8b-addc-df307ae49ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stateEq_implies_write_eq {t : Register} {ζ₁ ζ₂ : State} (h : ζ₁ ≃[t] ζ₂) (v : Word) :
    write t v ζ₁ ≃[t + 1] write t v ζ₂ := by
  simp [StateEq, StateEqRs] at *
  constructor; · exact h.1
  intro r hr
  have hr : r ≤ t := Register.le_of_lt_succ hr
  cases' lt_or_eq_of_le hr with hr hr
  · cases' h with _ h
    specialize h r hr
    simp_all
  · simp_all
#align arithcc.state_eq_implies_write_eq Arithcc.stateEq_implies_write_eq

/-- Writing the same value to any register preserves `≃[t]/ac`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142a3ff54cfd57837a9d0d87c13bcfabc400528a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
