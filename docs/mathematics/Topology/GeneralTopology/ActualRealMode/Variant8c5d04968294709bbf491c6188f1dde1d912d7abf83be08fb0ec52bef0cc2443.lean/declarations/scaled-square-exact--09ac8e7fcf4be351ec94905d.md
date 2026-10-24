# scaled_square_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8098258657afc744b1d4062840f2feaa56ed659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acda6f44-b04f-4b64-b686-d2ac99af6dbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21ac04ba-ad32-a683-03a0-f15eb12fd2d1",
  "kind": "theorem",
  "lexical_name": "scaled_square_exact",
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
  "slug": "scaled-square-exact--09ac8e7fcf4be351ec94905d",
  "source": {
    "blob": "b8098258657afc744b1d4062840f2feaa56ed659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ac8e7fcf4be351ec94905d6deed8df86e67f4c647a8962b009209b7ebc9231",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21ac04ba-ad32-a683-03a0-f15eb12fd2d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_square_exact (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
    A^9*Real.exp (-2*A*z)*normalizedSquare A z =
      (384^2*(z^2-1/4)^2/z^18) *
        (p (A*z)/A^4-Real.exp (-2*A*z)*p (-(A*z))/A^4)^2/sourceNormalization A := by
  have hZ : sourceNormalization A ≠ 0 := by unfold sourceNormalization; positivity
  have ha := hA.ne'
  have hs := actual_scaled_square_real A hA z hz
  have he := exp_square_rescale (A*z) (p (A*z)) (p (-(A*z)))
  have he' : Real.exp (-2*A*z)*(Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 =
    (p (A*z)-Real.exp (-2*A*z)*p (-(A*z)))^2 := by convert he using 1 <;> congr 1 <;> ring
  have hs' : A^17*sourceNormalization A*Real.exp (-2*A*z)*normalizedSquare A z =
      (384^2*(z^2-1/4)^2/z^18)*(p (A*z)-Real.exp (-2*A*z)*p (-(A*z)))^2 := by
    calc
      _ = Real.exp (-2*A*z)*(A^17*sourceNormalization A*normalizedSquare A z) := by ring
      _ = (384^2*(z^2-1/4)^2/z^18)*(Real.exp (-2*A*z)*
          (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2) := by rw [hs]; ring
      _ = _ := congrArg (fun v : ℝ => (384^2*(z^2-1/4)^2/z^18)*v) he' 
  rw [← sub_div,div_pow]
  apply (eq_div_iff hZ).mpr
  rw [← mul_div_assoc, ← pow_mul]
  norm_num
  apply (eq_div_iff (pow_ne_zero 8 ha)).mpr
  convert hs' using 1 <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8098258657afc744b1d4062840f2feaa56ed659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
