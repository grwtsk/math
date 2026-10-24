# LinearOrderedSemifield.toPosSMulStrictMono_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d17f4c4da209745bc0ac0fb7887cd6b615bd7f70c8717e5333bd7159ed2cb7a",
  "kind": "instance",
  "lexical_name": "LinearOrderedSemifield.toPosSMulStrictMono_rat",
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
  "slug": "linearorderedsemifield-topossmulstrictmono-rat--62ee06e36347984536d5b7aa",
  "source": {
    "blob": "dba9e780f510175aafc7580c9dfa9e736d5b2b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62ee06e36347984536d5b7aa1d4375a5c8c3510e52926ac1a4e2fbb2e7383f43",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d17f4c4da209745bc0ac0fb7887cd6b615bd7f70c8717e5333bd7159ed2cb7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance LinearOrderedSemifield.toPosSMulStrictMono_rat : PosSMulStrictMono ℚ≥0 α where
  elim q hq a b hab := by
    rw [NNRat.smul_def, NNRat.smul_def]; exact mul_lt_mul_of_pos_left hab <| NNRat.cast_pos.2 hq

end LinearOrderedSemifield

section LinearOrderedField
variable [Field α] [LinearOrder α] [IsStrictOrderedRing α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dba9e780f510175aafc7580c9dfa9e736d5b2b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
