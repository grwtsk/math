# mul_den_eq_num

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39b1b3c3-3224-1d37-0d30-8f2bea2ce946",
  "kind": "lemma",
  "lexical_name": "mul_den_eq_num",
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
  "slug": "mul-den-eq-num--ffa47b5bdcad00b74bd3896f",
  "source": {
    "blob": "5dce273679b5683de24a054559b2d29402845e01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant94adf0a7d34c8e17ccd88672bd6459dde5f4a54806cfa70f922f961252b6d4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffa47b5bdcad00b74bd3896f46ee37babef9a8fc15f75aca9a3b41100fa40877",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Defs/Variant94adf0a7d34c8e17ccd88672bd6459dde5f4a54806cfa70f922f961252b6d4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39b1b3c3-3224-1d37-0d30-8f2bea2ce946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma mul_den_eq_num (q : ℚ≥0) : q * q.den = q.num := by
  ext
  push_cast
  rw [← Int.cast_natCast, ← den_coe, ← Int.cast_natCast q.num, ← num_coe]
  exact Rat.mul_den_eq_num _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Defs/Variant94adf0a7d34c8e17ccd88672bd6459dde5f4a54806cfa70f922f961252b6d4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant94adf0a7d34c8e17ccd88672bd6459dde5f4a54806cfa70f922f961252b6d4af.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dce273679b5683de24a054559b2d29402845e01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
