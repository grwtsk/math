# Cell.mapToSucc_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73179262d2625f5abf16a2c0f2bb57a46866097b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8480cf64-45e0-e827-05e5-b263d7ffdb2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e9b35cc-f757-97ea-ee85-8593ca7e3224",
  "kind": "lemma",
  "lexical_name": "Cell.mapToSucc_ι",
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
  "slug": "cell-maptosucc--2c42a9a4289d0415c71427a4",
  "source": {
    "blob": "73179262d2625f5abf16a2c0f2bb57a46866097b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 238,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c42a9a4289d0415c71427a4e6c39ebd89cd14ffff7e76151e3f013715f846c0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9b35cc-f757-97ea-ee85-8593ca7e3224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma Cell.mapToSucc_ι {j : ι} [SuccOrder ι] [NoMaxOrder ι] (c : f.Cell j) :
    c.mapToSucc ≫ (f.filtration (Order.succ j)).ι = c.map := rfl

section

/-!
The main technical result in this section is `SSet.Subcomplex.Pairing.RankFunction.isPushout`
which states that there is a pushout square:
```
                                      f.t j
∐ fun (c : f.Cell j) ↦ c.horn  -------------> f.filtration j
               |                                   |
         f.m j |                                   |
               v                      f.b j        v
∐ fun (c : f.Cell j) ↦ Δ[c.dim + 1]  -------> f.filtration (Order.succ j)
```
The map on the left is a coproduct of horn inclusions (the source and target
of the morphism `f.m j` are denoted `f.sigmaHorn j` and `f.sigmaStdSimplex j`).

-/

/-- Given a rank function for a proper pairing of a subcomplex of a
simplicial set, this is the coproduct of the horns corresponding to
all cells of rank `j`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73179262d2625f5abf16a2c0f2bb57a46866097b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
