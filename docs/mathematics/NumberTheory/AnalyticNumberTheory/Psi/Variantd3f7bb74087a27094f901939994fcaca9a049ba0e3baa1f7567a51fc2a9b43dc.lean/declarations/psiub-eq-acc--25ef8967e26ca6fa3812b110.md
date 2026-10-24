# psiUB_eq_acc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f29edb9-564c-6538-10db-7232d109f9d3",
  "kind": "theorem",
  "lexical_name": "psiUB_eq_acc",
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
  "slug": "psiub-eq-acc--25ef8967e26ca6fa3812b110",
  "source": {
    "blob": "3b5e73eccb695d7ba489001e0676bcd56fb94a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 179,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25ef8967e26ca6fa3812b1102aa861a46d0a1b21f9f0e2b1900bc5539df46500",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f29edb9-564c-6538-10db-7232d109f9d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem psiUB_eq_acc (n : Nat) (hn : 0 < n) (depth : Nat) :
    psiUB n depth = psiUB (n - 1) depth + vonMangoldtUB n depth := by
  have h1 : n = (n - 1) + 1 := by omega
  conv_lhs => rw [h1]
  rw [psiUB_succ]
  simp [show n - 1 + 1 = n from by omega]

/-- Core bridge: if the incremental loop `go` returns true starting at step `n`
with accumulator `acc = psiUB(n-1)`, then `checkPsiLeMulWith m slope depth` holds
for all `m in [n, bound]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b5e73eccb695d7ba489001e0676bcd56fb94a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
