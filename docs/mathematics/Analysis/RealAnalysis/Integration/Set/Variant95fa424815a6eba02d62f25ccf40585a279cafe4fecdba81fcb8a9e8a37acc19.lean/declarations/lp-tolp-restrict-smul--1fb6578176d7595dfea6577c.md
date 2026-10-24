# Lp_toLp_restrict_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c530e0b-7419-aaa3-53f6-1196c251bc77",
  "kind": "theorem",
  "lexical_name": "Lp_toLp_restrict_smul",
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
  "slug": "lp-tolp-restrict-smul--1fb6578176d7595dfea6577c",
  "source": {
    "blob": "8afac6bc0a4af13c191249d1cdc05f5b21f607d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 995,
    "line": 984,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb6578176d7595dfea6577c80f2c1abff608dbef63501794a3689c702c046fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c530e0b-7419-aaa3-53f6-1196c251bc77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 984–995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lp_toLp_restrict_smul (c : 𝕜) (f : Lp F p μ) (s : Set X) :
    ((Lp.memLp (c • f)).restrict s).toLp (⇑(c • f)) = c • ((Lp.memLp f).restrict s).toLp f := by
  ext1
  refine (ae_restrict_of_ae (Lp.coeFn_smul c f)).mp ?_
  refine (MemLp.coeFn_toLp ((Lp.memLp f).restrict s)).mp ?_
  refine (MemLp.coeFn_toLp ((Lp.memLp (c • f)).restrict s)).mp ?_
  refine
    (Lp.coeFn_smul c (MemLp.toLp f ((Lp.memLp f).restrict s))).mono fun x hx1 hx2 hx3 hx4 => ?_
  simp only [hx2, hx1, hx3, hx4, Pi.smul_apply]

/-- For `f : Lp E p μ`, we can define an element of `Lp E p (μ.restrict s)` by
`(Lp.memLp f).restrict s).toLp f`. This map is non-expansive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean#L984).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afac6bc0a4af13c191249d1cdc05f5b21f607d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
