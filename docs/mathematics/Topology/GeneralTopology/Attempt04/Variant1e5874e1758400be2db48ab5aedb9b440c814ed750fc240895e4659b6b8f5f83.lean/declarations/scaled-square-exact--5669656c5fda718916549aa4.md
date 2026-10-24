# scaled_square_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bded30e-0377-5363-b387-ea2d91855db4",
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
  "slug": "scaled-square-exact--5669656c5fda718916549aa4",
  "source": {
    "blob": "31eb6babfcb7129f499b527f66be0afafd4116a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5669656c5fda718916549aa489a881e970d442efda0df83098b13a482f8d7908",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bded30e-0377-5363-b387-ea2d91855db4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–115.

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
  rw [sub_div,div_pow]
  field_simp [ha,hZ]
  have hs' := congrArg (fun x : ℝ => Real.exp (-2*A*z)*x) hs
  rw [mul_assoc _ _ ((Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2),
    mul_left_comm _ (384^2*(z^2-1/4)^2/z^18),he'] at hs'
  nlinarith [hs']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31eb6babfcb7129f499b527f66be0afafd4116a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
