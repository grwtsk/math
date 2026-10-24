# rankOne_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ec89296-b340-4bcf-f5f8-92b0dc5cb7b1",
  "kind": "theorem",
  "lexical_name": "rankOne_inverse",
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
  "slug": "rankone-inverse--8fc73bec5a4edee6993f3ce4",
  "source": {
    "blob": "0266c97fd8ef7c09290cf977a198e13adc76dc23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 22,
    "path": "GRWTSK/Algebra/Hecke/RankOneQuadratic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fc73bec5a4edee6993f3ce4712e641500da0ffa7dff6c7bb470aac1ba03eac1",
  "verification": {
    "reference": "docs/verification/Algebra/Hecke/RankOneQuadratic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec89296-b340-4bcf-f5f8-92b0dc5cb7b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankOne_inverse (q qinv : R) (hq : q * qinv = 1) :
    rankOneGenerator q * (qinv • (rankOneGenerator q - (q - 1) • 1)) = 1 ∧
      (qinv • (rankOneGenerator q - (q - 1) • 1)) * rankOneGenerator q = 1 := by
  constructor <;> ext i j <;> fin_cases i <;> fin_cases j <;>
    simp [rankOneGenerator, Matrix.mul_apply, Fin.sum_univ_two] <;> ring_nf at * <;> simp_all

/-- The rank-one normalized element has the standard quadratic normalization
when q=v² and v has a supplied inverse. This is a matrix identity, not a KL basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hecke/RankOneQuadratic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0266c97fd8ef7c09290cf977a198e13adc76dc23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
