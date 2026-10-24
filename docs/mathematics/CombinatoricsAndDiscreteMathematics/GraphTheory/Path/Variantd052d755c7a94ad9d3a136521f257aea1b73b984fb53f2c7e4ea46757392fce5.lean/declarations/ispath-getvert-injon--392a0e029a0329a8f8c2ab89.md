# IsPath.getVert_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:139e952c-53cf-887e-8786-61000e9d28f7",
  "kind": "lemma",
  "lexical_name": "IsPath.getVert_injOn",
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
  "slug": "ispath-getvert-injon--392a0e029a0329a8f8c2ab89",
  "source": {
    "blob": "550ea2a70d013bce47ef461a3e3ba0fc60361346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 307,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:392a0e029a0329a8f8c2ab891ac025256064b766a1ed5a2613fabce36f9ece15",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:139e952c-53cf-887e-8786-61000e9d28f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPath.getVert_injOn {p : G.Walk u v} (hp : p.IsPath) :
    Set.InjOn p.getVert {i | i ≤ p.length} := by
  intro n hn m hm hnm
  induction p generalizing n m with
  | nil => aesop
  | @cons v w u h p ihp =>
    simp only [length_cons, Set.mem_setOf_eq] at hn hm hnm
    by_cases hn0 : n = 0 <;> by_cases hm0 : m = 0
    · aesop
    · simp only [hn0, getVert_zero, Walk.getVert_cons p h hm0] at hnm
      have hvp : v ∉ p.support := by aesop
      exact (hvp (Walk.mem_support_iff_exists_getVert.mpr ⟨(m - 1), ⟨hnm.symm, by omega⟩⟩)).elim
    · simp only [hm0, Walk.getVert_cons p h hn0] at hnm
      have hvp : v ∉ p.support := by aesop
      exact (hvp (Walk.mem_support_iff_exists_getVert.mpr ⟨(n - 1), ⟨hnm, by omega⟩⟩)).elim
    · simp only [Walk.getVert_cons _ _ hn0, Walk.getVert_cons _ _ hm0] at hnm
      have := ihp hp.of_cons (by omega : (n - 1) ≤ p.length)
        (by omega : (m - 1) ≤ p.length) hnm
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `550ea2a70d013bce47ef461a3e3ba0fc60361346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
