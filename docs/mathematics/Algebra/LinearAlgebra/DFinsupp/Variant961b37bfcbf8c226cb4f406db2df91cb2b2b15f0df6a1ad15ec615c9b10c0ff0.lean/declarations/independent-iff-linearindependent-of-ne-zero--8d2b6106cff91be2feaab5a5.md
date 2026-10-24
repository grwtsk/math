# independent_iff_linearIndependent_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f29e8fe-a54e-7601-75e9-75f75db777d0",
  "kind": "theorem",
  "lexical_name": "independent_iff_linearIndependent_of_ne_zero",
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
  "slug": "independent-iff-linearindependent-of-ne-zero--8d2b6106cff91be2feaab5a5",
  "source": {
    "blob": "2f2e5435502e6e766f7dd21a03b748287c68c504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 569,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d2b6106cff91be2feaab5a5eec3180a6537a021c934d6a70b5a55fee2ade4a4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f29e8fe-a54e-7601-75e9-75f75db777d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem independent_iff_linearIndependent_of_ne_zero [NoZeroSMulDivisors R N] {v : ι → N}
    (h_ne_zero : ∀ i, v i ≠ 0) : (Independent fun i => R ∙ v i) ↔ LinearIndependent R v :=
  let _ := Classical.decEq ι
  ⟨fun hv => hv.linearIndependent _ (fun i => Submodule.mem_span_singleton_self <| v i) h_ne_zero,
    fun hv => hv.independent_span_singleton⟩
#align complete_lattice.independent_iff_linear_independent_of_ne_zero CompleteLattice.independent_iff_linearIndependent_of_ne_zero

end Ring

end CompleteLattice
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2e5435502e6e766f7dd21a03b748287c68c504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
