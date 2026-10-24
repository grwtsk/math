# lieQuotientLieRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:530cd51ef23807b2f933d9fa31aee9a76bdb02184679948f8b41a8714234241c",
  "kind": "instance",
  "lexical_name": "lieQuotientLieRing",
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
  "slug": "liequotientliering--2724ed05cc89af5802d40636",
  "source": {
    "blob": "5d70712bd61d5066ccf61488ca2fc24809536341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2724ed05cc89af5802d40636ad1158fe61e877af4f2a2f6703b3013a40063b16",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:530cd51ef23807b2f933d9fa31aee9a76bdb02184679948f8b41a8714234241c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lieQuotientLieRing : LieRing (L ⧸ I) where
  add_lie := by
    intro x' y' z'; refine Quotient.inductionOn₃' x' y' z' ?_; intro x y z
    repeat'
      first
      | rw [is_quotient_mk]
      | rw [← mk_bracket]
      | rw [← Submodule.Quotient.mk_add (R := R) (M := L)]
    apply congr_arg; apply add_lie
  lie_add := by
    intro x' y' z'; refine Quotient.inductionOn₃' x' y' z' ?_; intro x y z
    repeat'
      first
      | rw [is_quotient_mk]
      | rw [← mk_bracket]
      | rw [← Submodule.Quotient.mk_add (R := R) (M := L)]
    apply congr_arg; apply lie_add
  lie_self := by
    intro x'; refine Quotient.inductionOn' x' ?_; intro x
    rw [is_quotient_mk, ← mk_bracket]
    apply congr_arg; apply lie_self
  leibniz_lie := by
    intro x' y' z'; refine Quotient.inductionOn₃' x' y' z' ?_; intro x y z
    repeat'
      first
      | rw [is_quotient_mk]
      | rw [← mk_bracket]
      | rw [← Submodule.Quotient.mk_add (R := R) (M := L)]
    apply congr_arg; apply leibniz_lie
#align lie_submodule.quotient.lie_quotient_lie_ring LieSubmodule.Quotient.lieQuotientLieRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d70712bd61d5066ccf61488ca2fc24809536341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
