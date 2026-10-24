# thetaExpBoundary_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd16fa69-cc97-29f8-4de0-05db229de4e4",
  "kind": "theorem",
  "lexical_name": "thetaExpBoundary_hasDerivAt",
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
  "slug": "thetaexpboundary-hasderivat--a345e606858d925226267671",
  "source": {
    "blob": "4d1d13bd56849030c354ad84e03948716e85b192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a345e606858d925226267671a4043450d237649a6d8891f28eccd3da81e67718",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd16fa69-cc97-29f8-4de0-05db229de4e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaExpBoundary_hasDerivAt (u : ℂ) (t : ℝ) :
    HasDerivAt (thetaExpBoundary u)
      (((8 : ℂ) * (thetaPhi t : ℂ) -
          (((2 * u) ^ 2 - 1) * (thetaA t : ℂ))) *
        thetaExpKernel u t) t := by
  have hD := (hasDerivAt_thetaADerivSeries t).ofReal_comp
  have hA := (hasDerivAt_thetaA t).ofReal_comp
  have hleft := hD.sub (hA.const_mul (2 * u))
  have hprod := hleft.mul (thetaExpKernel_hasDerivAt u t)
  have hrel :
      (thetaASecondSeries t : ℂ) - (thetaA t : ℂ) =
        (8 : ℂ) * (thetaPhi t : ℂ) := by
    exact_mod_cast thetaASecondSeries_sub_thetaA_eq_eight_phi t
  convert! hprod using 1
  rw [← hrel]
  simp only [Pi.sub_apply]
  ring

/-- The exponential kernel is continuous in the finite-interval variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1d13bd56849030c354ad84e03948716e85b192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
