# fixedKernel_integrableOn_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43d8442a-516c-6689-19a6-8cc3f9c0c130",
  "kind": "theorem",
  "lexical_name": "fixedKernel_integrableOn_Icc",
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
  "slug": "fixedkernel-integrableon-icc--1ea5f9cddb95d38bc7c15b7a",
  "source": {
    "blob": "a98adaf75ee042dc6a7e5f7abf9ec9218d351b29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 216,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea5f9cddb95d38bc7c15b7ad29a674c0234490e504bac4ec3ef1714a77e4600",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43d8442a-516c-6689-19a6-8cc3f9c0c130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_integrableOn_Icc (a b : ℝ) : IntegrableOn fixedKernel (Icc a b) := by
  let N := ⌊Real.exp b⌋₊ + 1
  have hc : Continuous (fun t : ℝ => ∑ n ∈ Finset.range N, logSample t (n + 1)) := by
    apply continuous_finsetSum
    intro n _
    exact continuous_const.mul (v_cont.comp
      ((continuous_id.sub continuous_const).sub continuous_const))
  apply hc.integrableOn_Icc.congr_fun _ measurableSet_Icc
  intro t ht
  apply (fixedKernel_eq_sum t N _).symm
  have h := Real.exp_le_exp.mpr ht.2
  exact h.trans (by exact_mod_cast (Nat.lt_floor_add_one (Real.exp b)).le)

end
end FixedSourceKernelScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a98adaf75ee042dc6a7e5f7abf9ec9218d351b29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
