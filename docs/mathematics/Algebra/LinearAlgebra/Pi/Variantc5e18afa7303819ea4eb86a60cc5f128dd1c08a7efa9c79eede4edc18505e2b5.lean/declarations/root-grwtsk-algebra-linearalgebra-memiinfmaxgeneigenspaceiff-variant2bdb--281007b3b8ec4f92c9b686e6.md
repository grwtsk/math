# _root_.GRWTSK.Algebra.LinearAlgebra.MemIInfMaxGenEigenspaceIff.Variant2bdb586926f11b17cefe92d657979002ce38f98a163b7561b26dc4935ae0d647.Submodule.inf_iInf_maxGenEigenspace_of_forall_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:674a2c9d-406a-7a92-e05d-1e2accb83a03",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.MemIInfMaxGenEigenspaceIff.Variant2bdb586926f11b17cefe92d657979002ce38f98a163b7561b26dc4935ae0d647.Submodule.inf_iInf_maxGenEigenspace_of_forall_mapsTo",
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
  "slug": "root-grwtsk-algebra-linearalgebra-memiinfmaxgeneigenspaceiff-variant2bdb--281007b3b8ec4f92c9b686e6",
  "source": {
    "blob": "385b942bf00cb1aea3eb6c9308d84e445afa6e14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:281007b3b8ec4f92c9b686e64b9d30df60b4181ba8abc5950216930d381b59fa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:674a2c9d-406a-7a92-e05d-1e2accb83a03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.MemIInfMaxGenEigenspaceIff.Variant2bdb586926f11b17cefe92d657979002ce38f98a163b7561b26dc4935ae0d647.Submodule.inf_iInf_maxGenEigenspace_of_forall_mapsTo {μ : ι → R}
    (p : Submodule R M) (hfp : ∀ i, MapsTo (f i) p p) :
    p ⊓ ⨅ i, (f i).maxGenEigenspace (μ i) =
      (⨅ i, maxGenEigenspace ((f i).restrict (hfp i)) (μ i)).map p.subtype := by
  cases isEmpty_or_nonempty ι
  · simp
  · simp_rw [inf_iInf, p.inf_genEigenspace _ (hfp _), Submodule.map_iInf _ p.injective_subtype]

/-- Given a family of endomorphisms `i ↦ f i`, a family of candidate eigenvalues `i ↦ μ i`, and a
distinguished index `i` whose maximal generalised `μ i`-eigenspace is invariant w.r.t. every `f j`,
taking simultaneous maximal generalised eigenspaces is unaffected by first restricting to the
distinguished generalised `μ i`-eigenspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `385b942bf00cb1aea3eb6c9308d84e445afa6e14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
