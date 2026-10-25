# R_eq_read_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0c3adf4-aa95-06a3-1088-7df2a100d30c",
  "kind": "theorem",
  "lexical_name": "R_eq_read_normal",
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
  "slug": "r-eq-read-normal--664b166d5b00f9373d62050f",
  "source": {
    "blob": "29f3f3277ee9f61effd5a2ad3116aaf21d2f4d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:664b166d5b00f9373d62050f3e3484fccc7d195fccea547cf3d9003f59dbac58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0c3adf4-aa95-06a3-1088-7df2a100d30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem R_eq_read_normal {Γ : List (Expr S)} {A : Expr S} {s : S}
    (t : TypingTree P Γ A (.sort s)) (hn : Normal A) (hr : Relevant (P := P) C Γ A)
    (e : Environment (hw := hw) Ω C hno Γ) : R Ω C hno A e = (preEvaluate Ω C hno t e).read.val :=
  (R_eq_normalRead_relevant Ω C hno hC t.typing hr e).trans
    (normalRead_eq_of_nf Ω C hno t.typing t (Expr.normalForm_of_normal hn) e)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f3f3277ee9f61effd5a2ad3116aaf21d2f4d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
