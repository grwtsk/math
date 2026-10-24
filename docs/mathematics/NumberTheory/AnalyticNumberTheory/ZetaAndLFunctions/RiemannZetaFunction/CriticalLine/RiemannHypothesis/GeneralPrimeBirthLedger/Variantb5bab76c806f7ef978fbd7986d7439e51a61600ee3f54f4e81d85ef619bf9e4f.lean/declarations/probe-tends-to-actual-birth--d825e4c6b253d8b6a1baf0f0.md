# probe_tends_to_actual_birth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d3f7d10-aa24-a011-8f0d-423b7fedba5a",
  "kind": "theorem",
  "lexical_name": "probe_tends_to_actual_birth",
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
  "slug": "probe-tends-to-actual-birth--d825e4c6b253d8b6a1baf0f0",
  "source": {
    "blob": "320aeca2c5d965e7786fdd8b16bca1b20c40337c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d825e4c6b253d8b6a1baf0f03f718346ebb12e358f449a25dfdf85dcd3c17f91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d3f7d10-aa24-a011-8f0d-423b7fedba5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probe_tends_to_actual_birth (p : ℕ) :
    Tendsto (fun n : ℕ ↦ (birthProbe p n : ℝ)) atTop (𝓝 (p : ℝ)) := by
  have h := (tendsto_const_nhds :
    Tendsto (fun _ : ℕ ↦ (p : ℝ) - 2) atTop (𝓝 ((p : ℝ) - 2))).add
      AtomicThetaBirth.rational_probe_tends_to_birth
  have he : (p : ℝ) - 2 + 2 = p := by ring
  simpa only [birthProbe, Rat.cast_add, Rat.cast_sub, Rat.cast_natCast, Rat.cast_ofNat, he] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320aeca2c5d965e7786fdd8b16bca1b20c40337c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
