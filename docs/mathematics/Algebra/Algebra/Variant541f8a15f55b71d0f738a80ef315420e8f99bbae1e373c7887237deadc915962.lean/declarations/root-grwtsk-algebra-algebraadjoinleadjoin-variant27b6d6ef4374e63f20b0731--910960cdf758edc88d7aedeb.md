# _root_.GRWTSK.Algebra.AlgebraAdjoinLeAdjoin.Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.Algebra.finite_of_essFiniteType_of_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60a0333f-9dc4-3896-f24e-4b89f20a8408",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.AlgebraAdjoinLeAdjoin.Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.Algebra.finite_of_essFiniteType_of_isAlgebraic",
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
  "slug": "root-grwtsk-algebra-algebraadjoinleadjoin-variant27b6d6ef4374e63f20b0731--910960cdf758edc88d7aedeb",
  "source": {
    "blob": "e7b019d6ca75a64f2c853953afc928b35bf7a838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 188,
    "path": "GRWTSK/Algebra/Algebra/Variant541f8a15f55b71d0f738a80ef315420e8f99bbae1e373c7887237deadc915962.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:910960cdf758edc88d7aedebdf6396b08df39cb100f04fe65256446a4757f774",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant541f8a15f55b71d0f738a80ef315420e8f99bbae1e373c7887237deadc915962.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60a0333f-9dc4-3896-f24e-4b89f20a8408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.AlgebraAdjoinLeAdjoin.Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.Algebra.finite_of_essFiniteType_of_isAlgebraic
    [Algebra.EssFiniteType F E] [Algebra.IsAlgebraic F E] :
    Module.Finite F E := by
  obtain ⟨s, hs⟩ := fg_top F E
  have : Algebra.FiniteType F E := by
    use s
    rw [← adjoin_toSubalgebra_of_isAlgebraic fun x hx ↦ Algebra.IsAlgebraic.isAlgebraic x]
    simpa [← toSubalgebra_inj] using hs
  exact Algebra.IsIntegral.finite

section RingHom

variable {A B C : Type*} [Field A] [CommSemiring B] [Field C] [Algebra A B]
  [Algebra B C] [Algebra A C] [IsScalarTower A B C] (b : B)

/-- Ring homomorphism between `A[b]` and `A⟮↑b⟯`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant541f8a15f55b71d0f738a80ef315420e8f99bbae1e373c7887237deadc915962.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant541f8a15f55b71d0f738a80ef315420e8f99bbae1e373c7887237deadc915962.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b019d6ca75a64f2c853953afc928b35bf7a838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
