# SelfAdjointDecompose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d0589c07047547c696695e5c3bb19b76b33dfadcd05e429119953d806a79a21",
  "kind": "class",
  "lexical_name": "SelfAdjointDecompose",
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
  "slug": "selfadjointdecompose--91e5114536fc9ba8d6f4b854",
  "source": {
    "blob": "a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 91,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91e5114536fc9ba8d6f4b854455e8037bcea27376068da75897d34d0284761a9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d0589c07047547c696695e5c3bb19b76b33dfadcd05e429119953d806a79a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SelfAdjointDecompose (R : Type*) [AddGroup R] [Star R]
    [PartialOrder R] where
  /-- Every self-adjoint element is the difference of nonnegative elements. -/
  exists_nonneg_sub_nonneg {a : R} (ha : IsSelfAdjoint a) :
    ∃ (b c : R), 0 ≤ b ∧ 0 ≤ c ∧ a = b - c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
