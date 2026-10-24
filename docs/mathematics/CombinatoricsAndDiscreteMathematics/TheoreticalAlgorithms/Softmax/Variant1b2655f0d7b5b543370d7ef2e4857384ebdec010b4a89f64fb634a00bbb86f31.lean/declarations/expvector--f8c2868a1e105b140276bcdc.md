# expVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a2e6b7a5202b97bd998680922f7ca6f5cf5ff010f1a9e84aae0baac6867427a",
  "kind": "def",
  "lexical_name": "expVector",
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
  "slug": "expvector--f8c2868a1e105b140276bcdc",
  "source": {
    "blob": "54dccc291f0be57076562be279f113b8e1fa7e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8c2868a1e105b140276bcdc5cad2bb8143daeb1e6a335cbac2927c143af6237",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a2e6b7a5202b97bd998680922f7ca6f5cf5ff010f1a9e84aae0baac6867427a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expVector (v : IntervalVector) (prec : Int) : IntervalVector :=
  v.map (fun I =>
    let res := IntervalRat.expComputable I.toIntervalRat 10 -- Depth 10
    IntervalDyadic.ofIntervalRat res prec
  )

/-! ### Verified LogSumExp -/

/--
  LogSumExp: log(Σ e^x_i)
  Computed as: max(x) + log(Σ e^(x_i - max(x)))
  This is the "Shift-Invariance" property used for numerical stability.
  It also keeps intervals small (inputs to exp are ≤ 0).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54dccc291f0be57076562be279f113b8e1fa7e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
