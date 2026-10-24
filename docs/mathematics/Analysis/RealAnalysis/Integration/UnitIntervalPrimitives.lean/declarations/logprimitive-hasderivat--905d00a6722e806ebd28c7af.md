# logPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:028b2c87-8393-adea-9fb2-2455a3b1817c",
  "kind": "theorem",
  "lexical_name": "logPrimitive_hasDerivAt",
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
  "slug": "logprimitive-hasderivat--905d00a6722e806ebd28c7af",
  "source": {
    "blob": "2a70ad52555b4bae12ff272a4dad56907f746338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/Analysis/Integration/UnitIntervalPrimitives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:905d00a6722e806ebd28c7af2e01bb0ae10eb8d083fb92cd993bd8ae3cb0a481",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:028b2c87-8393-adea-9fb2-2455a3b1817c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logPrimitive_hasDerivAt {t : ℝ} (ht : t ∈ Icc (0:ℝ) 1) :
    HasDerivAt logPrimitive (Real.log (1+t)) t := by
  have ha : HasDerivAt (fun x : ℝ => 1+x) 1 t := by
    simpa only [Pi.add_def, id_eq, zero_add] using
      (hasDerivAt_const t (1 : ℝ)).add (hasDerivAt_id t)
  have hd := (ha.mul (logarithm_hasDerivAt ht)).sub ha
  simp only [Pi.mul_def, Pi.sub_def] at hd
  change HasDerivAt logPrimitive _ t at hd
  apply hd.congr_deriv
  dsimp only [logarithm]
  have hn : 1+t≠0 := by linarith [ht.1]
  field_simp [hn]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/UnitIntervalPrimitives.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a70ad52555b4bae12ff272a4dad56907f746338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
