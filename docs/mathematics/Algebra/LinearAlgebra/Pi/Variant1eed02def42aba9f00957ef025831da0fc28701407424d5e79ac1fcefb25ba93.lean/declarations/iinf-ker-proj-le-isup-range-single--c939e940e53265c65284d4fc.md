# iInf_ker_proj_le_iSup_range_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b359d582-fa2b-00a4-1db4-e36fd78e1076",
  "kind": "theorem",
  "lexical_name": "iInf_ker_proj_le_iSup_range_single",
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
  "slug": "iinf-ker-proj-le-isup-range-single--c939e940e53265c65284d4fc",
  "source": {
    "blob": "1fd1de2e3efbfe5436af2ad9901e9442c0ae0a64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c939e940e53265c65284d4fcfcac58cccd2b30808d9b8c26d9b49b5608faee15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b359d582-fa2b-00a4-1db4-e36fd78e1076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_ker_proj_le_iSup_range_single {I : Finset ι} {J : Set ι} (hu : Set.univ ⊆ ↑I ∪ J) :
    ⨅ i ∈ J, ker (proj i : (∀ i, φ i) →ₗ[R] φ i) ≤ ⨆ i ∈ I, range (single R φ i) :=
  SetLike.le_def.2
    (by
      intro b hb
      simp only [mem_iInf, mem_ker, proj_apply] at hb
      rw [←
        show (∑ i ∈ I, Pi.single i (b i)) = b by
          ext i
          rw [Finset.sum_apply, ← Pi.single_eq_same i (b i)]
          refine Finset.sum_eq_single i (fun j _ ne => Pi.single_eq_of_ne ne.symm _) ?_
          intro hiI
          rw [Pi.single_eq_same]
          exact hb _ ((hu trivial).resolve_left hiI)]
      exact sum_mem_biSup fun i _ => mem_range_self (single R φ i) (b i))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd1de2e3efbfe5436af2ad9901e9442c0ae0a64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
