# fwdDiff_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cd8f8bc-084d-749e-20bc-bc8c141b0ad8",
  "kind": "lemma",
  "lexical_name": "fwdDiff_smul",
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
  "slug": "fwddiff-smul--5966b092c17a0b74f9dfaaa5",
  "source": {
    "blob": "283479e9193141c8446a03c476ed36bc78aa1071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5966b092c17a0b74f9dfaaa528c244c2a565a8875fbce901632ce3122017c55b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cd8f8bc-084d-749e-20bc-bc8c141b0ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fwdDiff_smul {R : Type} [Ring R] [Module R G] (f : M → R) (g : M → G) :
    Δ_[h] (f • g) = Δ_[h] f • g + f • Δ_[h] g + Δ_[h] f • Δ_[h] g := by
  ext y
  simp only [fwdDiff, Pi.smul_apply', Pi.add_apply, smul_sub, sub_smul]
  abel

-- Note `fwdDiff_const_smul` is more general than `fwdDiff_smul` since it allows `R` to be a
-- semiring, rather than a ring; in particular `R = ℕ` is allowed.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283479e9193141c8446a03c476ed36bc78aa1071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
