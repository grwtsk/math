# padicNormE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43e871c3518e9b7fac374f588788284a38502a27b58d0c4199759d7a78848737",
  "kind": "def",
  "lexical_name": "padicNormE",
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
  "slug": "padicnorme--04d89b34c8f95abee4594fc9",
  "source": {
    "blob": "69260dc47ccc1474018e7f79593145a8bb6a2a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 527,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04d89b34c8f95abee4594fc9a9d4e830b2d76d7bece19084bcdc7f84e6697c9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43e871c3518e9b7fac374f588788284a38502a27b58d0c4199759d7a78848737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def padicNormE {p : ℕ} [hp : Fact p.Prime] : AbsoluteValue ℚ_[p] ℚ where
  toFun := Quotient.lift PadicSeq.norm <| @PadicSeq.norm_equiv _ _
  map_mul' q r := Quotient.inductionOn₂ q r <| PadicSeq.norm_mul
  nonneg' q := Quotient.inductionOn q <| PadicSeq.norm_nonneg
  eq_zero' q := Quotient.inductionOn q fun r ↦ by
    rw [Padic.zero_def, Quotient.eq]
    exact PadicSeq.norm_zero_iff r
  add_le' q r := by
    trans
      max ((Quotient.lift PadicSeq.norm <| @PadicSeq.norm_equiv _ _) q)
        ((Quotient.lift PadicSeq.norm <| @PadicSeq.norm_equiv _ _) r)
    · exact Quotient.inductionOn₂ q r <| PadicSeq.norm_nonarchimedean
    refine max_le_add_of_nonneg (Quotient.inductionOn q <| PadicSeq.norm_nonneg) ?_
    exact Quotient.inductionOn r <| PadicSeq.norm_nonneg

namespace padicNormE

section Embedding

open PadicSeq

variable {p : ℕ} [Fact p.Prime]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69260dc47ccc1474018e7f79593145a8bb6a2a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
