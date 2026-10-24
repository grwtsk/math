# exists_norm_mk_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ee9b6f0-0a77-e39c-d764-93cc340cfd0c",
  "kind": "lemma",
  "lexical_name": "exists_norm_mk_lt",
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
  "slug": "exists-norm-mk-lt--99fa1b518d0b786320dc6351",
  "source": {
    "blob": "72eae8a98c8693074c0dfe8bfc847148cf09b722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99fa1b518d0b786320dc635120fba93c593f678f9c1de884e2f5f0acaa7ae24d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee9b6f0-0a77-e39c-d764-93cc340cfd0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_norm_mk_lt (x : M ⧸ S) (hε : 0 < ε) : ∃ m : M, m = x ∧ ‖m‖ < ‖x‖ + ε :=
  norm_lt_iff.1 <| lt_add_of_pos_right _ hε

/-- For any `m : M` and any `0 < ε`, there is `s ∈ S` such that `‖m * s‖ < ‖mk' S m‖ + ε`. -/
@[to_additive
/-- For any `m : M` and any `0 < ε`, there is `s ∈ S` such that `‖m + s‖ < ‖mk' S m‖ + ε`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72eae8a98c8693074c0dfe8bfc847148cf09b722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
