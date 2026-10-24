# fwdDiff_iter_const_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8bdc244-a385-ec2b-df5c-8c0d32427686",
  "kind": "lemma",
  "lexical_name": "fwdDiff_iter_const_smul",
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
  "slug": "fwddiff-iter-const-smul--954069cee197a98920597a62",
  "source": {
    "blob": "72b559d6c958ee410c1c5d9df942becee5f3db4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 129,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:954069cee197a98920597a62f461f2cd6b6da88c7c1af624702a09f26483f36a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8bdc244-a385-ec2b-df5c-8c0d32427686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma fwdDiff_iter_const_smul {R : Type*} [Monoid R] [DistribMulAction R G]
    (r : R) (f : M → G) (n : ℕ) : Δ_[h]^[n] (r • f) = r • Δ_[h]^[n] f := by
  induction n generalizing f with
  | zero => simp only [iterate_zero, id_eq]
  | succ n IH => simp only [iterate_succ_apply, fwdDiff_const_smul, IH]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b559d6c958ee410c1c5d9df942becee5f3db4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
