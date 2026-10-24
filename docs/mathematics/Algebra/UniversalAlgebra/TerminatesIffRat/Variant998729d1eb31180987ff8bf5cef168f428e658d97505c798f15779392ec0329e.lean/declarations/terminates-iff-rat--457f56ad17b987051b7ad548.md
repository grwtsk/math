# terminates_iff_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1462978d-3ba8-9ee8-c409-608a1edc3f2d",
  "kind": "theorem",
  "lexical_name": "terminates_iff_rat",
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
  "slug": "terminates-iff-rat--457f56ad17b987051b7ad548",
  "source": {
    "blob": "27f5cbb5311c7f47c0f7ffce8c5458d3ad1fee57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 323,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:457f56ad17b987051b7ad5487f59fc25165ff10dd10ae0bf90cf82695ac75326",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1462978d-3ba8-9ee8-c409-608a1edc3f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminates_iff_rat (v : K) : (of v).Terminates ↔ ∃ q : ℚ, v = (q : K) :=
  Iff.intro
    (fun terminates_v : (of v).Terminates =>
      show ∃ q : ℚ, v = (q : K) from exists_rat_eq_of_terminates terminates_v)
    fun exists_q_eq_v : ∃ q : ℚ, v = (↑q : K) =>
    Exists.elim exists_q_eq_v fun q => fun v_eq_q : v = ↑q =>
      have : (of q).Terminates := terminates_of_rat q
      (of_terminates_iff_of_rat_terminates v_eq_q).mpr this

end GenContFract
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27f5cbb5311c7f47c0f7ffce8c5458d3ad1fee57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
