# mangoldtDirichlet_movingLine_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11a92d07-0fb1-5a32-2215-a52550b0076f",
  "kind": "theorem",
  "lexical_name": "mangoldtDirichlet_movingLine_le",
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
  "slug": "mangoldtdirichlet-movingline-le--fd6281b195fb969bd8e25e0d",
  "source": {
    "blob": "99b6e5176d5221a8ae80a9a7e88570e157e2c673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 214,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd6281b195fb969bd8e25e0ddc7ae5c7c1d4b5ff422895d6f4f73aa804062808",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11a92d07-0fb1-5a32-2215-a52550b0076f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtDirichlet_movingLine_le {A : ℝ} (hA : 0 < A) :
    (∑' n : ℕ, mangoldtDirichletTerm (1 + 1 / A) n) ≤ A ^ 2 + A * Real.log 2 := by
  have h := mangoldtDirichlet_tsum_le (movingLine_one_lt hA)
  convert! h using 1
  field_simp
  ring

/-- The convenient quadratic envelope covers every real scale at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99b6e5176d5221a8ae80a9a7e88570e157e2c673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
