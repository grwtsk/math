# tendsto_atTop_finset_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b27651a2-c8be-13e1-58c2-9270e8da25ce",
  "kind": "theorem",
  "lexical_name": "tendsto_atTop_finset_of_monotone",
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
  "slug": "tendsto-attop-finset-of-monotone--87bcca49042bf91484f29cc1",
  "source": {
    "blob": "d73a7f50977ca043313f2ab6cd5666950d7670e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87bcca49042bf91484f29cc1cb2550b606f838cdd4052e282f768025e971a01e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b27651a2-c8be-13e1-58c2-9270e8da25ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atTop_finset_of_monotone [Preorder β] {f : β → Finset α} (h : Monotone f)
    (h' : ∀ x : α, ∃ n, x ∈ f n) : Tendsto f atTop atTop := by
  simp only [atTop_finset_eq_iInf, tendsto_iInf, tendsto_principal]
  intro a
  rcases h' a with ⟨b, hb⟩
  exact (eventually_ge_atTop b).mono fun b' hb' => (Finset.singleton_subset_iff.2 hb).trans (h hb')

alias _root_.Monotone.tendsto_atTop_finset := tendsto_atTop_finset_of_monotone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73a7f50977ca043313f2ab6cd5666950d7670e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
