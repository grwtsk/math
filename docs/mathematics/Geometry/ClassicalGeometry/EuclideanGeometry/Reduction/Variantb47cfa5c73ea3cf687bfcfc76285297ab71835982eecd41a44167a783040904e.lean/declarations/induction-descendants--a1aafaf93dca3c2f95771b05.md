# induction_descendants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d8c4f9c-cd05-801c-1301-c962cdb3fbe1",
  "kind": "theorem",
  "lexical_name": "induction_descendants",
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
  "slug": "induction-descendants--a1aafaf93dca3c2f95771b05",
  "source": {
    "blob": "66dc2acb88044e8a73e6ed38e7794d91f27bd237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 663,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1aafaf93dca3c2f95771b05fcf7657ef3e42e40c5248625e3053917bf41c53c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8c4f9c-cd05-801c-1301-c962cdb3fbe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_descendants {Q : Expr S → Prop}
    (step : ∀ M, StronglyNormalizing M → (∀ N, Beta M N → Q N) →
      (∀ N, (∃ K, Expr.Child K M ∧ Expr.Subterm N K) → Q N) → Q M)
    {M : Expr S} (hs : StronglyNormalizing M) : Q M := by
  have h : Q M ∧ ∀ N, Expr.Subterm N M → Q N := by
    apply induction_subterms (Q := fun M => Q M ∧ ∀ N, Expr.Subterm N M → Q N) _ hs
    intro M hM hr hc
    have hq : Q M := step M hM (fun N h => (hr N h).1) (by
      rintro N ⟨K,hK,hN⟩
      exact (hc K hK).2 N hN)
    refine ⟨hq, ?_⟩
    intro N hN
    cases hN with
    | refl => exact hq
    | tail hN hK => exact (hc _ hK).2 _ hN
  exact h.1
end StronglyNormalizing
end PureTypeSystem

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66dc2acb88044e8a73e6ed38e7794d91f27bd237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
