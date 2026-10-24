# tendsto_Lp_of_tendsto_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55f24e90-0535-ce9b-c17a-67a78c671454",
  "kind": "theorem",
  "lexical_name": "tendsto_Lp_of_tendsto_eLpNorm",
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
  "slug": "tendsto-lp-of-tendsto-elpnorm--1deb29d723eb5679eb963a76",
  "source": {
    "blob": "79cc2c523cfab60ab98b85956c422f658b0883de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1deb29d723eb5679eb963a76c43c8e3c524bef04d0b938753789cf38ea104d0c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55f24e90-0535-ce9b-c17a-67a78c671454`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_Lp_of_tendsto_eLpNorm {ι} {fi : Filter ι} [Fact (1 ≤ p)] {f : ι → Lp E p μ}
    (f_lim : α → E) (f_lim_ℒp : MemLp f_lim p μ)
    (h_tendsto : fi.Tendsto (fun n => eLpNorm (⇑(f n) - f_lim) p μ) (𝓝 0)) :
    fi.Tendsto f (𝓝 (f_lim_ℒp.toLp f_lim)) :=
  (tendsto_Lp_iff_tendsto_eLpNorm f f_lim f_lim_ℒp).mpr h_tendsto

@[deprecated (since := "2025-02-21")]
alias tendsto_Lp_of_tendsto_ℒp := tendsto_Lp_of_tendsto_eLpNorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79cc2c523cfab60ab98b85956c422f658b0883de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
