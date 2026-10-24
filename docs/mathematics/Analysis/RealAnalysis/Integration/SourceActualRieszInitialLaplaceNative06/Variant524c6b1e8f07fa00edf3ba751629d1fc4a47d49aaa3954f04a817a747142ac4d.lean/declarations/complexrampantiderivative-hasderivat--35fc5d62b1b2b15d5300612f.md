# complexRampAntiderivative_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49c4bea9-2339-b521-8004-0feaba762449",
  "kind": "theorem",
  "lexical_name": "complexRampAntiderivative_hasDerivAt",
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
  "slug": "complexrampantiderivative-hasderivat--35fc5d62b1b2b15d5300612f",
  "source": {
    "blob": "88445f92cb289bbd0fae0706eb8c9c71f99bae3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35fc5d62b1b2b15d5300612f32b7751d07d37589105691bd65f9a51725e6cb3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49c4bea9-2339-b521-8004-0feaba762449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem complexRampAntiderivative_hasDerivAt {z : ℂ} (hz : z ≠ 0) (a t : ℝ) :
    HasDerivAt (complexRampAntiderivative z a)
      (((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) t := by
  have hx : HasDerivAt (fun t : ℝ => (t : ℂ)) 1 t := (hasDerivAt_id t).ofReal_comp
  have h := ((hx.const_mul (-z)).cexp.neg).mul
    (((hx.sub_const (a : ℂ)).div_const z).add_const (1 / z^2))
  convert! h using 1
  · ext u
    simp only [complexRampAntiderivative, Pi.mul_apply, Pi.neg_apply]
    push_cast
    ring
  · simp only [Pi.neg_apply]
    push_cast
    field_simp [hz]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88445f92cb289bbd0fae0706eb8c9c71f99bae3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
