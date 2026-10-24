# liftAlgHom_fieldRange_eq_of_range_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d810929-32fd-5ff2-c2fb-6d7fa646da40",
  "kind": "theorem",
  "lexical_name": "liftAlgHom_fieldRange_eq_of_range_eq",
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
  "slug": "liftalghom-fieldrange-eq-of-range-eq--5a7a28c1c780a0e4c5dc0131",
  "source": {
    "blob": "b8208c1f4c906953a65d0c8fb471b5200d6a70fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 258,
    "path": "GRWTSK/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a7a28c1c780a0e4c5dc01310c41b6d045a0a6f1f4ee06952b0d8595c287b3ef",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d810929-32fd-5ff2-c2fb-6d7fa646da40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftAlgHom_fieldRange_eq_of_range_eq (hg : Function.Injective g)
    {s : Set L} (hs : g.range = Algebra.adjoin F s) :
    (liftAlgHom hg : K →ₐ[F] L).fieldRange = IntermediateField.adjoin F s :=
  algHom_fieldRange_eq_of_comp_eq_of_range_eq (by ext; simp) hs

end IsFractionRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8208c1f4c906953a65d0c8fb471b5200d6a70fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
