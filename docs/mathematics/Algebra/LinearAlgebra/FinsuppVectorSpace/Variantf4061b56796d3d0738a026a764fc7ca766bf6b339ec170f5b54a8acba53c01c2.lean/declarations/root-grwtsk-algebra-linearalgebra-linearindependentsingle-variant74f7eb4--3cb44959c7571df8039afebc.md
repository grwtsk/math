# _root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.Finset.sum_single_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adec20b3-325f-983a-6794-8f782efa99b2",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.Finset.sum_single_ite",
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
  "slug": "root-grwtsk-algebra-linearalgebra-linearindependentsingle-variant74f7eb4--3cb44959c7571df8039afebc",
  "source": {
    "blob": "9ae8a9c68f41e609ea25f2b13be8e82eb8c619c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 160,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cb44959c7571df8039afebc467ef75c3cd41f43c5855bd94217b6ae811f30fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adec20b3-325f-983a-6794-8f782efa99b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.Finset.sum_single_ite (a : R) (i : n) :
    (Finset.univ.sum fun x : n => Finsupp.single x (ite (i = x) a 0)) = Finsupp.single i a := by
  rw [Finset.sum_congr_set {i} (fun x : n => Finsupp.single x (ite (i = x) a 0)) fun _ =>
      Finsupp.single i a]
  · simp
  · intro x hx
    rw [Set.mem_singleton_iff] at hx
    simp [hx]
  intro x hx
  have hx' : ¬i = x := by
    refine' ne_comm.mp _
    rwa [mem_singleton_iff] at hx
  simp [hx']
#align finset.sum_single_ite Finset.sum_single_ite

-- Porting note: LHS of equivFun_symm_stdBasis simplifies to this
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae8a9c68f41e609ea25f2b13be8e82eb8c619c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
